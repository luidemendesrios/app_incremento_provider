import 'package:flutter/material.dart';
import 'package:increment_provider/controller/increment_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incremento com provider'),
      ),
      body: Center(
        child: Consumer<IncrementController>(
          builder: (BuildContext context,IncrementController value, Widget? child){
            return Text(
              value.number.toString(),
               style: const TextStyle(fontSize: 30)
              );
          },
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<IncrementController>(context,listen: false).incNumber();
        },
        child: const Icon(Icons.plus_one),
        ),
    );
  }
}