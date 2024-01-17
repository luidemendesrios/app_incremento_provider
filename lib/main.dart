import 'package:flutter/material.dart';
import 'package:increment_provider/ui/home_page.dart';
import 'package:provider/provider.dart';

import 'controller/increment_controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (_) => IncrementController(),
        child: const HomePage(),
        )
    );
  }
}
