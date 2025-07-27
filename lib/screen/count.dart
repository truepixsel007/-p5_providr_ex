

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:p5_providr_ex/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer){
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    // first time build
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('provider example'),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (BuildContext context, value, Widget? child) {
            print('only this widget build');
            return Text(
              countProvider.count.toString(),
              style: TextStyle(fontSize: 50),
            );
          },

        ),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
            countProvider.setCount();
          },
          child: Icon(Icons.add),
      ),
    );
  }
}


