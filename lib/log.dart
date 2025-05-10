import 'package:flutter/material.dart';
import 'package:testapp/Home.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _loginApp();
  }
}

class _loginApp extends State<login> {
  final TextEditingController mailcontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
// verifier si les champs sont vides
  Future<void> login() async {
    if (mailcontroller.text.isEmpty || passwordController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Erreur'),
            content: Text('Veuillez remplir tous les champs.'),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  backgroundColor: Color(0xFFE11010),
                ),
                child: Text(
                  'OK',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ],
          );
        },
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 220, 36, 36),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.only(left: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Veuillez vous connectez',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    cursorColor: const Color.fromARGB(255, 16, 0, 0),
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    controller: mailcontroller,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                        labelText: 'E-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE11010)),
                            borderRadius: BorderRadius.circular(100)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE11010)),
                            borderRadius: BorderRadius.circular(100)),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    cursorColor: const Color.fromARGB(255, 16, 0, 0),
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 2, 0, 0),
                    ),
                    controller: passwordController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                        labelText: 'Mots de passe',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE11010)),
                            borderRadius: BorderRadius.circular(100)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFE11010)),
                            borderRadius: BorderRadius.circular(100)),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        )),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 40,
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2478C0)),
                    onPressed: () {
                      login();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Enter',
                        style: TextStyle(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
