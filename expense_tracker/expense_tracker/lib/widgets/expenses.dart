// app bar
// chart
// list of expenses

import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:expense_tracker/widgets/chart/chart.dart';
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

  void onSubmitNewExpense(Expense newExpense) {
    setState(() {
      _registeredExpenses.add(newExpense);
    });
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => NewExpense(onSubmitNewExpense: onSubmitNewExpense),
    );
  }

  void onRemoveExpense(Expense expense) {
    var expenseIndex = _registeredExpenses.indexOf(expense);

    // remove the expense
    setState(() {
      _registeredExpenses.remove(expense);
    });

    // but give user a change to undo
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Expense deleted'),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: "Undo",
          onPressed: () => setState(() {
            _registeredExpenses.insert(expenseIndex, expense);
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(child: Text("No expenses have been added yet"));
    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: onRemoveExpense,
      );
    }

    // return the widget tree here.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Flutter Expense Tracker"),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          Chart(expenses: _registeredExpenses),
          Expanded(child: mainContent),
        ],
      ),
    );
  }
}
