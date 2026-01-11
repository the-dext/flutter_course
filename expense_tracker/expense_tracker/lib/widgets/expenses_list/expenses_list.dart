import 'dart:math';

import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    // for an unknown number of expenses using a column is a bad decision,
    // because all the items would be created but not visible.
    // this costs performance.
    // instead for this situation you can use a ListView widget.
    // which is scrollable but this would still create all children.

    // to get around that, user the builder constructor function so that it is
    // scrollable but doesn't create the list items until they are visible
    // or about to be visible.

    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        child: ExpenseItem(expenses[index]),
        onDismissed: (direction) => onRemoveExpense(expenses[index]),
      ),
    );
  }
}
