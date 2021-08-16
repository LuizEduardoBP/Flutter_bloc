import 'package:desafio_bloc/bloc/color_bloc.dart';
import 'package:desafio_bloc/pages/home_page.dart';
import 'package:desafio_bloc/repositorys/color_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: BlocProvider(
        create: (context)=> ColorBloc(ActionColorRepository()),
        child: HomePage(),),
    );
  }
}
