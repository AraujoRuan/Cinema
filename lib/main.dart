import 'package:flutter/material.dart';
import 'package:cinema/screans/home_screen.dart';
import 'package:cinema/screans/form_pe_screaan.dart';
import 'package:cinema/screans/filmes/perfil_film.dart';



void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ingresso",
      home: new HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
