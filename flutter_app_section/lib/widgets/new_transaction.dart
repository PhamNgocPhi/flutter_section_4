import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  void addTx() {
    print('excute addTx()');
    final title = titleController.text;
    final amount = double.parse(amountController.text);

    if (title.isEmpty || amount <= 0) {
      return;
    }
    addTransaction(
      title,
      amount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onSubmitted: (_) => addTx(),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'amount'),
              keyboardType: TextInputType.number,
              controller: amountController,
              onSubmitted: (_) => addTx(),
            ),
            FlatButton(
              onPressed: addTx,
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
