import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
        ),
        body: ListView(
          children: [
            Column(
              children: const [
                Contact('R', 'Romain Hoogmoed', 'romain.hoogmoed@example.com'),
                Contact('E', 'Emilie Olsen', 'emilie.olsen@example.com'),
                Contact('T', 'Téo Lefevre', 'teo.lefevre@example.com'),
                Contact('N', 'Nicole Cruz', 'nicole.cruz@example.com'),
                Contact('R', 'Ramna Peixoto', 'nicole.peixoto@example.com'),
                Contact('J', 'Jose Ortiz', 'jose.ortiz@example.com'),
                Contact('A', 'Alma Christensen', 'alma.christensen@example.com'),
                Contact('S', 'Sergio Hill', 'sergio.hill@example.com'),
                Contact('M', 'Malo Gonzalez', 'malo.gonzalez@example.com'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final String startLetter;
  final String name;
  final String email;

  const Contact(this.startLetter, this.name, this.email, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(startLetter)),
      title: Text(name),
      subtitle: Text(email),
    );
  }
}
