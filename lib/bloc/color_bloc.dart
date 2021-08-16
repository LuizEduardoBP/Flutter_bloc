import 'package:desafio_bloc/models/color_model.dart';
import 'package:desafio_bloc/repositorys/color_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part  'color_event.dart';
part 'color_state.dart';


class ColorBloc extends Bloc<ColorEvent, ColorState>{
  final ColorRepository _colorRepository;

  ColorBloc(this._colorRepository) : super(ColorInitial());

  @override
  Stream<ColorState> mapEventToState(ColorEvent event) async*{
    if(event is GetColor){
      try{
        final color = await _colorRepository.colorPick(event.text, event.color);
        yield ColorFinal(color);
      }catch(e){
        yield ColorError("Erro");
      }
    }
  } 
}
