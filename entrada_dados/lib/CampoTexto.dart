import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text(
         "Entrada de Dados"
       ),
     ),
      body: Column(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digíte um valor"
              ),

              //enabled: true,

              //maxLength: 2,

              //maxLengthEnforced: true,

              /* style: TextStyle(
                fontSize: 25,
                color: Colors.green
              ),*/

              //obscureText: true,

              /*
              onChanged: (String texto){
                print("Valor digitado: " + texto);
              },*/

              onSubmitted:  (String texto){
                print("Valor digitado: " + texto);
              } ,
              controller: _textEditingController,

            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.lightGreen,
            onPressed: () {
              print("Valor digitado: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
