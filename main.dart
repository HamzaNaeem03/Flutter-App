import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Quotes App',
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 164, 123, 123),
        primarySwatch: Colors.blueGrey,
      ),
      home: QuotesScreen(),
    );
  }
}

class QuotesScreen extends StatelessWidget {
  final List<Quote> quotes = [
    Quote(
      text: "The only way to do great work is to love what you do.",
      author: "Steve Jobs",
    ),
    Quote(
      text: "Innovation distinguishes between a leader and a follower.",
      author: "Steve Jobs",
    ),
    Quote(
      text: "The future belongs to those who believe in the beauty of their dreams.",
      author: "Eleanor Roosevelt",
    ),
    Quote(
      text: "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      author: "Winston Churchill",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qoutes App'),
      ),
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          return Card(
            shadowColor: Colors.blueGrey,
            elevation: 5,
            margin: EdgeInsets.all(20.0),
            child: ListTile(
              title: Text(
                quotes[index].text,
                style: TextStyle(fontSize: 20.0),
              ),
              subtitle: Text(
                '- ${quotes[index].author}',
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Quote {
  final String text;
  final String author;

  Quote({required this.text, required this.author});
}
