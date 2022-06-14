import 'package:flutter/material.dart';
import 'package:cinema/models/ingresso_model.dart';
import 'package:cinema/screans/form_pe_screaan.dart';
import 'package:cinema/screans/filmes/perfil_film.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingresso"),
        backgroundColor: Color.fromRGBO(104, 90, 1, 1.0),
      ),
      backgroundColor: Colors.teal,
      body: ListView.builder(
        itemCount: Filmes.length,
        itemBuilder: (context, index) {
          return _peCard(context, index);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => FormPeScreen()
            ),
          );
        },
        label: Text("Cadastrar"),
        icon: Icon(Icons.person),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

  Widget _peCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (_) => PerfilFilme(filme: Filmes[index])
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: Filmes[index].id,
              child: Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(30)
                    ),
                    image: DecorationImage(
                        image: AssetImage(Filmes[index].imageUrl),
                        fit: BoxFit.cover
                    )
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    Filmes[index].nome,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 20, 0),
              child: Text(
                Filmes[index].descricao,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),


            )
          ],
        ),
      ),
    );
  }
}