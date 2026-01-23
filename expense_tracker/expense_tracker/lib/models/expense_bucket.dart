import 'package:expense_tracker/models/expense.dart';

class ExpenseBucket {
  final Category category;
  final List<Expense> expenses;

  ExpenseBucket({required this.category, required this.expenses});

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
    : expenses = allExpenses.where((x) => x.category == category).toList();

  double get totalExpenses {
    double sum = 0;
    for (final ex in expenses) {
      sum += ex.amount;
    }
    return sum;
  }
}
