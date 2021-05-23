import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  @override
  createState() => _CounterPageState();

}

class _CounterPageState extends State<CounterPage> {

  TextStyle _textStyle = new TextStyle(fontSize: 35);

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Taps Stateful',
              style: _textStyle,
            ),
            Text('$_count',
              style: _textStyle,
            )
          ],
        )
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      children: <Widget>[
        SizedBox(width: 30.0,),

        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),

        Expanded( child: SizedBox()),

        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _remove,
        ),

        SizedBox(width: 5.0,),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  void _add() {
    setState(() {
    _count++;
    });
  }

  void _remove() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }

}