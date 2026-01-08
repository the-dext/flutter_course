import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuidGen = Uuid();

enum Category { food, travel, leisure, work, bill }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
  Category.bill: Icons.account_balance,
};

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
