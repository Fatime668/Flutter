import 'package:flutter/material.dart';
import 'item_list.dart';

void main() {
  runApp(const MyApp());
}

final List<Color> itemColors = [Colors.teal, Colors.black];
List<String> itemList = [
  'Ahmet',
  'Mehmet',
  'Ayşe',
  'Fatima',
  'Ali',
  'Hasan',
  'Hüseyin',
  'Emine',
  'Zeynep',
  'Mustafa',
  'Serkan',
  'Aslı',
  'Burak',
  'Ebru',
  'Cem',
  'Deniz',
  'Esra',
  'Ferhat',
  'Gizem',
  'Hatice',
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ilk Uygulamam'),
          backgroundColor: Colors.teal,
        ),
        body: ItemList(itemList: itemList, itemColors: itemColors),
      ),
    );
  }
}
