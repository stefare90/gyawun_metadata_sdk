# Gyawun Metadata Plugin SDK

The official SDK for developing metadata plugins for the **Gyawun** ecosystem. This package defines the "Contract" (interfaces and models) that allows the main application (Host) and dynamic plugins (Sandbox) to communicate securely and in a type-safe manner using `dart_eval`.

---

## 📦 SDK Overview

This SDK is built on three core pillars:

1.  **Models**: Strongly typed definitions of musical entities (`Album`, `Track`, `Artist`, `Image`, etc.). These models use the `@Bind()` annotation to ensure full compatibility with the Sandbox bridge.
2.  **Interfaces**: Abstract classes defining plugin capabilities (`IAlbum`, `ISearch`, `IBrowse`, etc.) and core services like `INetworkService`.
3.  **MetadataHost**: A static Service Locator that provides plugins with system tools managed by the Host App, such as secure network connectivity and logging.
---

## 🚀 Maintenance & Updates

Because this SDK acts as a bridge between compiled code (Flutter) and interpreted code (Plugin), you **must regenerate the bindings** whenever you modify any file in the `lib/src` directory (e.g., adding a field to a model or a method to an interface).

Questa versione è stata ottimizzata per essere ancora più chiara e strutturata come una guida di **manutenzione** professionale. Ho raggruppato i concetti per "fase" e reso le istruzioni sui fix manuali più immediate con l'uso di tabelle/elenchi puntati tecnici.

### 🛠 Generating & Managing Bindings (`dart_eval`)

To enable interoperability between the native SDK and the `dart_eval` runtime, you must generate and maintain binding files. Due to current limitations in the `dart_eval` CLI, a manual migration and patching process is required.

#### 1. Setup & Generation
Ensure the CLI is installed:
```bash
dart pub global activate dart_eval
```

Run the binding generator from the root of the package:
```bash
dart_eval bind
```
*Note: This command generates temporary `*.eval.dart` files alongside your source classes. These are **templates** and should not be used directly in production.*

#### 2. Migration Workflow
To prevent your manual fixes from being overwritten, follow this workflow:
1. **Generate:** Run `dart_eval bind`.
2. **Migrate:** Move or copy the new logic from the generated files into the stable versions located in `lib/eval/`.
3. **Patch:** Apply the **Mandatory Manual Fixes** listed below.
4. **Cleanup:** Delete the temporary `*.eval.dart` files from the `lib/metadata/` directories.

---

#### ⚠️ Mandatory Manual Fixes
Every time you update the bindings, you **must** verify and apply these four patches in your `lib/eval/` files:

##### A. Bridge Registration (Factory & Constructor)
Abstract classes (Interfaces) often have empty `configureForRuntime` methods.
*   **Factory:** Add a static `$new` method to the `$Bridge` class.
*   **Dot Suffix:** Use a dot `.` after the class name in `registerBridgeFunc` to target the default constructor.
*   **isBridge:** Set `isBridge: true`.

```dart
static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) => $IInterface$bridge();

static void configureForRuntime(Runtime runtime) {
  runtime.registerBridgeFunc($spec.library, 'IInterface.', $new, isBridge: true);
}
```

##### B. Default Values in Signatures
The CLI strips default values (e.g., `= 0`), causing `Null Safety` errors since the bridge expects non-nullable types.
*   **Fix:** Re-insert default values in the bridge method signature.
```dart
// Fix this:
Future<Result> search(String query, {int offset, int limit}) 
// Into this:
Future<Result> search(String query, {int offset = 0, int limit = 20}) 
```

##### C. Bridge Getters (Casting vs Wrapping)
When a getter returns an object that is itself a Bridge, the CLI incorrectly tries to `.wrap()` it.
*   **Fix:** Remove `.wrap()` and cast the native object directly to `$Instance`.
```dart
// Fix this:
case 'subModule': return $ISubModule.wrap($value.subModule); 
// Into this:
case 'subModule': return $value.subModule as $Instance;
```

##### D. Async Data Flow (Future Unboxing)
The CLI generates sync-style wrappers for `Future` methods. This causes type mismatches and prevents data from flowing back to the host.
*   **Fix:** Use `async/await` and unbox the result using `.$value`.
```dart
@override
Future<Album> getAlbum(String id) async {
  final result = await $_invoke('getAlbum', [$String(id)]);
  // Cast to $Value and extract the real native 'Album' instance
  return (result as $Value).$value; 
}
```

---

## 🏗️ System Architecture

The ecosystem follows a three-tier architecture:
*   **Host (Flutter App)**: Injects real-world implementations (like HTTP clients) into the `MetadataHost`.
*   **SDK (This package)**: Defines the rules of engagement and provides common data types.
*   **Plugin (.evc Bytecode)**: Implements specific logic (e.g., MusicBrainz) by importing the SDK.