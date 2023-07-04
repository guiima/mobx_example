import 'package:flutter/material.dart';

class SystemErrorPage extends StatelessWidget {
  const SystemErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('System Error'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: const <Widget>[
          Center(child: Text('System error')),
        ],
      ),
    );
  }
}
