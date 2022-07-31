import 'package:flutter/material.dart';

void main() => runApp(MyApp(key: null,));

class MyApp extends StatefulWidget {
  MyApp({ Key? key}) : super (key: key);

  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TextField num1 = const TextField(
      keyboardType: TextInputType.number,
    );

    TextField num2 = const TextField(
      keyboardType: TextInputType.number,
    );

    RaisedButton button = RaisedButton(
      onPressed: null,
      child: Text('Calcular'),
    );

    Column columns = Column(
      children: <Widget>[
        num1,
        num2,
        button
      ],
    );

    return MaterialApp(
        title: 'Calculator',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Calculator'),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child: columns,
          ),
        )
    );
  }
}