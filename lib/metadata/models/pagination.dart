import 'package:eval_annotation/eval_annotation.dart';

@Bind()
class PaginatedResult<T> {
  final List<T> items;
  final int total;
  final int offset;
  final int limit;

  const PaginatedResult({
    required this.items,
    required this.total,
    required this.offset,
    required this.limit,
  });
  const PaginatedResult.empty()
    : items = const [],
      total = 0,
      offset = 0,
      limit = 10;
}
