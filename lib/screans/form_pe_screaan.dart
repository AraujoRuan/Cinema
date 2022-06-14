import 'package:flutter/material.dart';

class FormPeScreen extends StatefulWidget {
  const FormPeScreen({Key? key}) : super(key: key);

  @override
  State<FormPeScreen> createState() => _FormPeScreenState();
}

class _FormPeScreenState extends State<FormPeScreen> {
  String sexoPe = 'Masculino';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de pessoa"),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Nome da pessoa"),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "E-mail"),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: "Idade"),
                    ),
                    DropdownButtonFormField(
                      value: sexoPe,
                      onChanged: (String? sexoSelecionada) {
                        setState(() {
                          sexoPe = sexoSelecionada!;
                        });
                      },
                      items: <String>[
                        'Masculino',
                        'Feminino',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),

                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.redAccent,
                            child: Text(
                              "Cadastrar",
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        )),
                  ]),
            ),
          ),
        ));
  }
}