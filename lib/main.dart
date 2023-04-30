import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(
          title: 'title',
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [
    Transaction('12', 'New Shoes', 19.99, DateTime.now()),
    Transaction('23', 'Repair Laptop', 69.99, DateTime.now()),
    Transaction('23', 'Repair Laptop', 69.99, DateTime.now()),
    Transaction('23', 'Repair Laptop', 69.99, DateTime.now()),
    Transaction('23', 'Repair Laptop', 69.99, DateTime.now()),
    Transaction('23', 'Repair Laptop', 69.99, DateTime.now()),
    Transaction('23', 'Repair Laptop', 69.99, DateTime.now()),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Transactions App',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 40,
              child: const Card(
                color: Colors.blue,
                child: Text('CHILD'),
              ),
            ),
            ListView.builder(
              itemCount: transactions.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index){
                return Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15
                      ),
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue, width: 2)),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        transactions[index].amount.toString(),
                        style: const TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                            transactions[index].title,
                            style: const TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 17,
                            ),
                        ),
                        Text(transactions[index].date.toString())
                      ],
                    )
                  ],
                );
              },


            )
          ],
        ));
  }
}
