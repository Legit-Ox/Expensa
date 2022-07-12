import 'package:flutter/material.dart';
import 'package:expensa/models/transaction.dart';
import 'package:intl/intl.dart';
class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.transaction,
    required this.mediaQuery,
    required this.deleteTx,
  }) : super(key: key);

  final Transaction transaction;
  final MediaQueryData mediaQuery;
  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(19))),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(100, 0, 201, 162),
          radius: 30,
          child: Padding(
            padding: EdgeInsets.all(6),
            child: FittedBox(
                child: Text(
              '\$${transaction.amount}',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        title: Text(
          transaction.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle:
            Text(DateFormat.yMMMd().format(transaction.date)),
        trailing: mediaQuery.size.width > 460
            ? FlatButton.icon(
                onPressed: () => deleteTx(transaction.id),
                icon: const Icon(Icons.delete),
                label: const Text('Delete'))
            : IconButton(
                icon: const Icon(Icons.delete),
                color: Color.fromARGB(255, 150, 122, 218),
                onPressed: () => deleteTx(transaction.id)),
      ),
    );
  }
}