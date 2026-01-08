// app bar
// chart
// list of expenses

import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter course",
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "Tram ticket",
      amount: 4.5,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: "Lunch",
      amount: 5,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Mobile phone",
      amount: 19.99,
      date: DateTime.now(),
      category: Category.bill,
    ),
    Expense(
      title: "Eating out",
      amount: 42.23,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Cinema",
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // return the widget tree here.
    return Scaffold(
      body: Column(
        children: [
          Text("the chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
