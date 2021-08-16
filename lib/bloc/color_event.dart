part of 'color_bloc.dart';

@immutable
abstract class ColorEvent{}

class GetColor extends ColorEvent{
  final String text;
  final Color color;

  GetColor(this.text, this.color);
}