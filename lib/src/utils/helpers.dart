/// Returns a list of integers from `start` to `end` (exclusive) incremented by `step`,
/// ```
/// range(end);
/// range(start, end);
/// range(start, end, step);
/// ```
List<int> range(int arg1, [int arg2 = -1, int step = 1]) {
  final int start = arg2 == -1 ? 0 : arg1;
  final int end = arg2 == -1 ? arg1 : arg2;
  return List<int>.generate(((end - start) / step).ceil(), (int i) => start + i * step);
}
