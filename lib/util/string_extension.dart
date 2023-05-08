extension StringExtension on String {
  String toSearchFormat() {
    return replaceAll(RegExp(' +'), '+');
  }
}