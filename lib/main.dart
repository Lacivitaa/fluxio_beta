import 'package:flutter/material.dart';
import 'package:fluxio_beta/screens/welcome.dart';

void main() {
  runApp(App());
}

// ignore: use_key_in_widget_constructors
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flux.io",
      home: Welcome(),
    );
  }
}