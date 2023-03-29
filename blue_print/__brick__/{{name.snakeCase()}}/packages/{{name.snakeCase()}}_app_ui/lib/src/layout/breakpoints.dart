/// Namespace for Default {{name.pascalCase()}} Breakpoints
enum Breakpoints {
  small(760),
  medium(1024),
  large(1280),
  ;

  const Breakpoints(this.value);
  final int value;
}
