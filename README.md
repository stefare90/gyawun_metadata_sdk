# Gyawun Metadata Plugin SDK

The official SDK for developing metadata plugins for the **Gyawun** ecosystem. This package defines the "Contract" (interfaces and models) that allows the main application (Host) and dynamic plugins (Sandbox) to communicate securely and in a type-safe manner using `dart_eval`.

## 📦 SDK Overview

This SDK is built on three core pillars:

1.  **Models**: Strongly typed definitions of musical entities (`Album`, `Track`, `Artist`, `Image`, etc.). These models use the `@Bind()` annotation to ensure full compatibility with the Sandbox bridge.
2.  **Interfaces**: Abstract classes defining plugin capabilities (`IAlbum`, `ISearch`, `IBrowse`, etc.) and core services like `INetworkService`.
3.  **MetadataHost**: A static Service Locator that provides plugins with system tools managed by the Host App, such as secure network connectivity and logging.

## 🚀 Maintenance & Updates

Because this SDK acts as a bridge between compiled code (Flutter) and interpreted code (Plugin), you **must regenerate the bindings** whenever you modify any file in the `lib/src` directory (e.g., adding a field to a model or a method to an interface).

### Binding Generation Command

Ensure you have the `dart_eval` CLI installed globally (`dart pub global activate dart_eval`) and run the following command from the root of this package:

```bash
dart_eval bind
```

*   **Why is this necessary?** This command scans for `@Bind()` annotations and generates wrapper classes (`$Album`, `$ITrack`, etc.) that allow `dart_eval` to map memory between the Host and the Sandbox.

## 🏗️ System Architecture

The ecosystem follows a three-tier architecture:
*   **Host (Flutter App)**: Injects real-world implementations (like HTTP clients) into the `MetadataHost`.
*   **SDK (This package)**: Defines the rules of engagement and provides common data types.
*   **Plugin (.evc Bytecode)**: Implements specific logic (e.g., MusicBrainz) by importing the SDK.


---

## 📄 Additional Information

*   **Repository**: [Link to repository]
*   **SDK Version**: 1.0.0
*   **License**: MIT

---

### Usage Tips:
1.  **Do not manually edit** files `*.eval.dart`. They will be overwritten during the next `bind` execution.
2.  Always use **absolute package imports** (`package:gyawun_metadata_sdk/...`) for internal SDK references to avoid resolution issues within the sandbox compiler.