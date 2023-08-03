import 'package:flutter/material.dart';

class Transackt extends StatefulWidget {
  const Transackt({super.key});

  @override
  State<Transackt> createState() => _TransacktState();
}

class _TransacktState extends State<Transackt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Transact'),
      ),
    );
  }
}
