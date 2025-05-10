import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testapp/log.dart';

class Splahview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplahviewState();
  }
}

class _SplahviewState extends State<Splahview> {
  void initState() {
    super.initState();
    // chargement de l'application
    Timer(Duration(seconds: 10), () {
      //naviguer vers la page suivant
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/B.jpg'), fit: BoxFit.cover),
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bienvenue à SCJ LAVAGE ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 300,
                ),
                Container(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                        'Éclat divin pour votre voiture: Du Cœur de Jésus au monde',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ))
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
