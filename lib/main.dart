import 'package:flutter/material.dart';

void main() {
  runApp(HelloBooksApp());
}

class HelloBooksApp extends StatelessWidget {

 // This widget is the root of your application.
    @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage( title: 'Hello Books'),
     );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage ({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final List<String> greetings = [
    'Hello Books',
    'Hola Libros',
    'Ciao Libra',
    'Hallo Ebitabo',
  ];

  int index = 0;

  void _updateGreeting() {
    setState(() {
      index = (index + 1) % greetings.length;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Text(
            greetings[index],
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _updateGreeting,
          tooltip: 'Greeting',
          child: const Icon(Icons.insert_emoticon),
        ),
      );
    }
}