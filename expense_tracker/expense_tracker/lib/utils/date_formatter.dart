import 'package:intl/intl.dart';

final _formatter = DateFormat("dd/MM/yyyy");

String formatDate(DateTime date) => _formatter.format(date);
