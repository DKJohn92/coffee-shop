import 'package:flutter/material.dart';

class Coffee extends ChangeNotifier {
  final String name;
  final String price;
  final String imagePath;

  Coffee({required this.name, required this.price, required this.imagePath});
}
