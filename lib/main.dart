import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/count_provider.dart';
import 'screen/count.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // this is single provider
    return ChangeNotifierProvider(
        create:(_) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CountScreen(),
      ),
    );
  }
}

