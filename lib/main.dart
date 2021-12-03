import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/button.dart';
import 'package:providerdemo/provider_calculator.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CALCULATOR",
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Colors.white,
          onPressed: () => exit(0),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Calculator(),
      ),
    );
  }
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CalculatorProvider(),
      builder: (context, child) => Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Center(
                child: Text(
                  context.watch<CalculatorProvider>().output,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().cancelTap();
                  },
                  child: butC,
                ),
                TextButton(onPressed: () {}, child: but$),
                TextButton(onPressed: () {}, child: butpercent),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().operatorTap('/');
                  },
                  child: butdiv,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('7');
                  },
                  child: but7,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('8');
                  },
                  child: but8,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('9');
                  },
                  child: but9,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().operatorTap('-');
                  },
                  child: butsub,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('4');
                  },
                  child: but4,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('5');
                  },
                  child: but5,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('6');
                  },
                  child: but6,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().operatorTap('+');
                  },
                  child: butsum,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('1');
                  },
                  child: but1,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('2');
                  },
                  child: but2,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('3');
                  },
                  child: but3,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().operatorTap('*');
                  },
                  child: butmul,
                ),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().inputNumber('0');
                  },
                  child: but0,
                ),
                TextButton(onPressed: () {}, child: butdot),
                TextButton(
                  onPressed: () {
                    context.read<CalculatorProvider>().calculatorResult();
                  },
                  child: butequal,
                ),
              ],
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            flex: 7,
          ),
        ],
      ),
    );
  }
}
