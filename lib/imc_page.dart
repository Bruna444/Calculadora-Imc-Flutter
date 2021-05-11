import 'package:flutter/material.dart';

class ImcPage extends StatefulWidget {
  @override
  _ImcPageState createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  final TextEditingController _controladorPeso = TextEditingController();
  final TextEditingController _controladorAltura = TextEditingController();
  String resultadoFinal = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  child: Image.asset(
                    'images/imc.png',
                  ),
                ),
                TextFormField(
                  controller: _controladorPeso,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    labelText: "Peso",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen),
                    ),
                  ),
                ),
                TextFormField(
                  controller: _controladorAltura,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    
                    labelText: "Altura",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_controladorPeso != '' && _controladorAltura != '') {
                      double peso = double.parse(_controladorPeso.text);
                      double altura = double.parse(_controladorAltura.text);
                      double valorFinal = (peso / (altura * altura));
                      resultadoFinal = valorFinal.toString();
                      setState(() {});
                    }
                  },
                  child: Text(
                    'Calcular',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Center(
                    child: Text(
                      resultadoFinal,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
