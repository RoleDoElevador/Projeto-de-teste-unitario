import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:teste_clean_arquitecture/layers/presentation/controllers/carro_controller.dart';

class CarrosPage extends StatefulWidget {
  const CarrosPage({super.key});

  @override
  State<CarrosPage> createState() => _CarrosPageState();
}

CarroController controller = GetIt.instance.get<CarroController>();

class _CarrosPageState extends State<CarrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: 
      Text(controller.carro.placa),
      
      ),
    );
  }
}
