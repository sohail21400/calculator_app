import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPageState createState() => CalculatorPageState();
}

class CalculatorPageState extends State<CalculatorPage> {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  double answer;

  addition() {
    setState(() {
      answer =
          double.parse(num1Controller.text) + double.parse(num2Controller.text);
    });
  }

  multiplication() {
    setState(() {
      answer =
          double.parse(num1Controller.text) * double.parse(num2Controller.text);
    });
  }

  subtraction() {
    setState(() {
      answer =
          double.parse(num1Controller.text) - double.parse(num2Controller.text);
    });
  }

  division() {
    setState(() {
      answer =
          double.parse(num1Controller.text) / double.parse(num2Controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.assignment),
        title: Text("Calculator"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    answer.toString(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text('Enter Number 1'),
              TextField(
                textAlign: TextAlign.center,
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter first number'),
              ),
              SizedBox(height: 30),
              Text('Enter Number 2'),
              TextField(
                textAlign: TextAlign.center,
                controller: num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter second number'),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        child: Text('+'),
                        onPressed: addition,
                        color: Colors.tealAccent,
                      ),
                      MaterialButton(
                        child: Text('-'),
                        onPressed: subtraction,
                        color: Colors.tealAccent,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        child: Text('*'),
                        onPressed: multiplication,
                        color: Colors.tealAccent,
                      ),
                      MaterialButton(
                        child: Text('/'),
                        onPressed: division,
                        color: Colors.tealAccent,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
