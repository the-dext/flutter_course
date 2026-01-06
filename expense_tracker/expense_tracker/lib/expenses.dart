// app bar
// chart
// list of expenses

import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    // return the widget tree here.
    return Scaffold(
      body: Column(children: [Text("the chart"), Text("the expenses list")]),
    );
  }
}
