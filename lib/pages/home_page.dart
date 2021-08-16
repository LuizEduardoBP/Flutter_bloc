import 'package:desafio_bloc/bloc/color_bloc.dart';
import 'package:desafio_bloc/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ColorBloc, ColorState>(
      listener: (context, state) {
        if (state is ColorError) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('teste'),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is ColorInitial) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.grey,
                title: Center(child: Text("ColorApp")),
              ),
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    text: "Azul",
                    color: Colors.blue,
                    onPressed: () =>
                        changeColor(context, Colors.blue, "Azul"),
                  ),
                  ButtonWidget(
                    text: "Vermelho",
                    color: Colors.red,
                    onPressed: () => changeColor(
                        context, Colors.red, "Vermelho"),
                  ),
                  ButtonWidget(
                    text: "Amarelo",
                    color: Colors.yellow,
                    onPressed: () => changeColor(
                        context, Colors.yellow, "Amarelo"),
                  ),
                  ButtonWidget(
                    text: "Verde",
                    color: Colors.green,
                    onPressed: () =>
                        changeColor(context, Colors.green, "Verde"),
                  ),
                  ButtonWidget(
                    text: "Rosa",
                    color: Colors.pink,
                    onPressed: () =>
                        changeColor(context, Colors.pink, "Rosa"),
                  ),
                ],
              )));
        } else if (state is ColorFinal) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: state.color.color,
                title: Center(child: Text("ColorApp - ${state.color.text}")),
              ),
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    text: "Azul",
                    color: Colors.blue,
                    onPressed: () =>
                        changeColor(context, Colors.blue, "Azul"),
                  ),
                  ButtonWidget(
                    text: "Vermelho",
                    color: Colors.red,
                    onPressed: () => changeColor(
                        context, Colors.red, "Vermelho"),
                  ),
                  ButtonWidget(
                    text: "Amarelo",
                    color: Colors.yellow,
                    onPressed: () => changeColor(
                        context, Colors.yellow, "Amarelo"),
                  ),
                  ButtonWidget(
                    text: "Verde",
                    color: Colors.green,
                    onPressed: () =>
                        changeColor(context, Colors.green, "Verde"),
                  ),
                  ButtonWidget(
                    text: "Rosa",
                    color: Colors.pink,
                    onPressed: () =>
                        changeColor(context, Colors.pink, "Rosa"),
                  ),
                ],
              )));
        } else {
          return Text("A");
        }
      },
    );
  }
}

void changeColor(
    BuildContext context, Color color, String text) {
  final colorBloc = BlocProvider.of<ColorBloc>(context);
  colorBloc.add(GetColor(text, color));
}
