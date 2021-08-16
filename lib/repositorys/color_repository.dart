import 'package:desafio_bloc/models/color_model.dart';
import 'package:flutter/painting.dart';

abstract class ColorRepository{
  ColorModel colorPick(String text, Color color);
}

class ActionColorRepository implements ColorRepository{
  @override
  ColorModel colorPick(String text, Color color) {
    return ColorModel(text, color);
  }
}

