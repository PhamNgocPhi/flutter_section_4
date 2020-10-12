import 'package:flutter/material.dart';
import 'package:flutter_app_section/models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _transactions = [
    Transaction(
        id: 't1', title: 'new shoes', amount: 67.36, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'new jean', amount: 87.46, date: DateTime.now())
  ];

  void _addTransaction(String txTitle, double txAmount) {
    final newTansaction = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _transactions.add(newTansaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(
          transactions: _transactions,
        ),
      ],
    );
  }
}
