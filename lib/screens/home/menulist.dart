import 'package:flutter/material.dart';
import 'package:food_delivery/components/Restaurant.dart';

class MenuList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Restaurant(),
            Restaurant(),
            Restaurant(),
            Restaurant(),
            Restaurant(),
            Restaurant(),
            Restaurant(),


          ],
        ),
      ),
    );
  }
}