part of 'color_bloc.dart';

@immutable
abstract class ColorState{
  const ColorState();
}

class ColorInitial extends ColorState{
  const ColorInitial();
}

class ColorFinal extends ColorState{
  final ColorModel color;
  const ColorFinal(this.color);
}

class ColorError extends ColorState{
  final String errorMessage;
  const ColorError(this.errorMessage);
}