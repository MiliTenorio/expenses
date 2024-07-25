import 'models/transaction.dart';

class Data {
  final transactions = [
    Transaction(
        id: 1,
        title: 'Example 1',
        value: 310.10,
        date: DateTime.now().subtract(const Duration(days: 50))),
    Transaction(
        id: 2,
        title: 'Example 2',
        value: 50.00,
        date: DateTime.now().subtract(const Duration(days: 4))),
    Transaction(
        id: 3,
        title: 'Example 3',
        value: 50.09,
        date: DateTime.now().subtract(const Duration(days: 3))),
    Transaction(
        id: 4,
        title: 'Example 4',
        value: 50.60,
        date: DateTime.now().subtract(const Duration(days: 2))),
    Transaction(
        id: 5,
        title: 'Example 5',
        value: 652.00,
        date: DateTime.now().subtract(const Duration(days: 4))),
    Transaction(
        id: 1,
        title: 'Example 6',
        value: 310.10,
        date: DateTime.now().subtract(const Duration(days: 2))),
    Transaction(
        id: 2,
        title: 'Blouse',
        value: 50.00,
        date: DateTime.now().subtract(const Duration(days: 3))),
    Transaction(id: 3, title: 'Example 7', value: 100.09, date: DateTime.now()),
    Transaction(id: 4, title: 'Example 8', value: 50.60, date: DateTime.now()),
    Transaction(id: 5, title: 'Example 9', value: 362.00, date: DateTime.now())
  ];
}
