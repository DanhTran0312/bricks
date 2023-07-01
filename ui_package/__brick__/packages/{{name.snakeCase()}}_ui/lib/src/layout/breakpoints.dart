/// Namespace for Default {{name.pascalCase()}} Breakpoints
enum Breakpoints {
  small(525),
  medium(820),
  large(1280);

  const Breakpoints(this.value);
  final int value;
}
