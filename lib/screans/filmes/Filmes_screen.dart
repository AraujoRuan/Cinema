import 'package:flutter/material.dart';
import '../../models/ingresso_model.dart';
import '../../widgets/custom_navbar.dart';


class filmesScreen extends StatelessWidget {
  //const filmesScreen({Key? key}) : super(key: key);
  final Filme? filme;
  filmesScreen({this.filme});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: filme!.id,
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(filme!.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 10),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("filmes",
                    style:TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  elevation: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      leading: Container(
                        padding: EdgeInsets.only(right:12),
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide( width: 1.0, color: Colors.redAccent)
                            )
                        ),
                        child: Icon(Icons.movie, color: Colors.redAccent),
                      ),
                      title: Text(
                        filme!.nome,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text(filme!.descricao,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
            Icons.add
        ),
        backgroundColor: Colors.redAccent,

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customNavBar(filme!.id),
    );
  }
}
