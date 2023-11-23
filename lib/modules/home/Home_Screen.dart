import 'package:flutter/material.dart';

class myHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {
            print('Menu Icon Pressed');

          },
        ),
      )
    ,);

  }


}