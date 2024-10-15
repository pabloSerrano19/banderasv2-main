import 'package:banderas/config/pais_provider.dart';
import 'package:banderas/config/pais_screen.dart';
import 'package:banderas/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PaisProvider())],
      
      child: MaterialApp(
        theme: AppTheme().theme(),
        title: 'country App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const Center(

            
            child:  PaisScreen()
          ),
        ),
      ),
    );
  }
}
