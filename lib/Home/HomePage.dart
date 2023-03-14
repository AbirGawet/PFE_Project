import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth instance = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    //instance.authStateChanges().listen((User user) {
    //   if (user == null) {
    //     Navigator.of(context).pushNamed('login');
    //  } else {
    //    print('there is user');
    //  }
    // } as void Function(User? user)?);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Group_Name",
          style: TextStyle(),
        ),
        backgroundColor: const Color.fromARGB(210, 1, 162, 190),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Nom_Prénom"),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("photo"),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("Home");
              },
              title: const Text("Home_Page"),
              leading: const Icon(Icons.home),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("catalogue");
              },
              title: const Text("Catalogue"),
              leading: const Icon(Icons.photo_library),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("equipe");
              },
              title: const Text("Equipe"),
              leading: const Icon(Icons.group),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("profil");
              },
              title: const Text("Profil"),
              leading: const Icon(Icons.person),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("event");
              },
              title: const Text("Evènement"),
              leading: const Icon(Icons.edit_calendar),
            ),
          ],
        ),
      ),
    );
  }
}
