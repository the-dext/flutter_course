import 'package:uuid/uuid.dart';

const uuidGen = Uuid();

enum Category { food, travel, leisure, work, bill }

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  // the : after the method is a 'class initializer list'
  // to initialize fields without receiving an arg for them.
  // normal method body cannot set a final field, but the initializer list can.
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuidGen.v4();
}
