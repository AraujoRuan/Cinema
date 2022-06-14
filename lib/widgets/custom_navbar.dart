import 'package:cinema/screans/filmes/perfil_film.dart';
import 'package:flutter/material.dart';
import 'package:cinema/models/ingresso_model.dart';
import '../screans/filmes/Filmes_screen.dart';


class customNavBar extends StatefulWidget {
  final Filme? filme;
  String id;
  customNavBar(this.id, {this.filme});
  int paginaAberta = 0;

  @override
  State<customNavBar> createState() => _customNavBarState();
}

class _customNavBarState extends State<customNavBar> {
  late Widget paginaAtual;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Color(0xFFE7DAE4),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        widget.paginaAberta = 0;
                      });

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => PerfilFilme(
                            filme: Filmes[2],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit_calendar,
                          color: widget.paginaAberta == 0
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                        Text(
                          "Destaque",
                          style: TextStyle(
                            color: widget.paginaAberta == 0
                                ? Colors.redAccent
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        widget.paginaAberta = 1;
                      });
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => filmesScreen(
                            filme: Filmes[1],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.movie,
                          color: widget.paginaAberta == 1
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                        Text(
                          "Filmes",
                          style: TextStyle(
                            color: widget.paginaAberta == 1
                                ? Colors.redAccent
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        widget.paginaAberta = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: widget.paginaAberta == 2
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                        Text(
                          "Cinema",
                          style: TextStyle(
                            color: widget.paginaAberta == 2
                                ? Colors.redAccent
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        widget.paginaAberta = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit_calendar,
                          color: widget.paginaAberta == 3
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                        Text(
                          "Promoções",
                          style: TextStyle(
                            color: widget.paginaAberta == 3
                                ? Colors.redAccent
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}