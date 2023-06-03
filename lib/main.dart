import 'package:flutter/material.dart';
import 'package:teste_clean_arquitecture/core/inject/inject.dart';
import 'package:teste_clean_arquitecture/layers/presentation/UI/pages/carros_pages.dart';

void main() {
  Inject.init();
  runApp(
     const MaterialApp(
      home: CarrosPage(),
    ),
  );
}
