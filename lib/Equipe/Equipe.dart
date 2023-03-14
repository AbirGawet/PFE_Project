import 'package:arvea/Home/HomePage.dart';
import 'package:flutter/material.dart';

class Equipe extends StatefulWidget {
  const Equipe({super.key});

  @override
  State<Equipe> createState() => _EquipeState();
}

class _EquipeState extends State<Equipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const HomePage();
        }));
      }),
    );
  }
}
