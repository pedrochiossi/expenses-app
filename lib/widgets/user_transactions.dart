import 'package:expenses/widgets/transaction_input.dart';
import 'package:flutter/material.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transaction> _userTransactions = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "t2", title: "Groceries", amount: 125.72, date: DateTime.now()),
    Transaction(id: "t3", title: "Uber", amount: 23.19, date: DateTime.now()),
  ];

  void _addTransaction(String title, double amount) {
    final newTransaction = Transaction(
      title: title, 
      amount: amount, 
      date: DateTime.now(), 
      id: DateTime.now().toString());

      setState(() {
        _userTransactions.add(newTransaction);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionInput(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
