import 'package:expense_tracker/utils/date_formatter.dart';
import 'package:expense_tracker/models/expense.dart' as expenses;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  // text editing controller needs to be DISPOSED!
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? selectedDate;
  expenses.Category selectedCategory = expenses.Category.leisure;

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();

    super.dispose();
  }

  void _showDatePicker() async {
    var newDateValue = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().add(Duration(days: -365)),
      lastDate: DateTime.now(),
    );

    setState(() {
      selectedDate = newDateValue;
    });
  }

  void saveNewExpense() {
    bool isTitleInvalid = _titleController.text.trim().isEmpty;
    bool isAmountInvalid =
        (double.tryParse(_amountController.text.trim()) ?? 0) <= 0;
    bool isDateInvalid = selectedDate == null;

    if (isTitleInvalid || isAmountInvalid || isDateInvalid) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Invalid input"),
          content: Text(
            "Please enter a valid title, amount, date and category",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(label: Text("Title")),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    label: Text("Amount (£)"),
                    prefixText: "£",
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      selectedDate != null
                          ? formatDate(selectedDate!)
                          : 'No date selected',
                    ),
                    IconButton(
                      onPressed: _showDatePicker,
                      icon: (Icon(Icons.calendar_month)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              DropdownButton(
                items: expenses.Category.values
                    .map(
                      (category) => DropdownMenuItem(
                        value: category,
                        child: Text(category.name.toUpperCase()),
                      ),
                    )
                    .toList(),
                onChanged: (v) {
                  if (v != null) {
                    setState(() {
                      selectedCategory = v;
                    });
                  }
                },
                value: selectedCategory,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: saveNewExpense,
                child: const Text("Save Expense"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
