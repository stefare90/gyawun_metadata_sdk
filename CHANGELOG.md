## 3.0.0

- **BREAKING:** `ISearch.chips()` now returns `List<SearchCategory>` instead of `List<String>`. Display labels are no longer part of the contract (they are host-side l10n); the contract carries the category identity through the new closed enum `SearchCategory { tracks, albums, artists, playlists }`. An empty list means "aggregate results only".
- New `@Bind()` enum `SearchCategory` with its `dart_eval` bridge binding.

## 1.0.0

- Initial version.
