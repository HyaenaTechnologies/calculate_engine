import 'package:flutter/material.dart';

class BasicCalculator extends StatefulWidget {
  const BasicCalculator({super.key});

  // Basic Calculator State
  @override
  State<BasicCalculator> createState() => _BasicCalculatorState();
}

class _BasicCalculatorState extends State<BasicCalculator> {
  // Basic Calculator Widgets
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        const Text(
          '',
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        const Text(
          '',
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.blue,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/delete.png',
                      semanticLabel: 'Clear',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.blue,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/percent.png',
                      semanticLabel: 'Percentage',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.blue,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/square_root.png',
                      semanticLabel: 'Square Root',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.red,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/backspace.png',
                      semanticLabel: 'Backspace',
                    ),
                  ),
                ]),
          ),
        ]),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/seven.png',
                      semanticLabel: 'Seven',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/eight.png',
                      semanticLabel: 'Eight',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/nine.png',
                      semanticLabel: 'Nine',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.green,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/division.png',
                      semanticLabel: 'Division',
                    ),
                  ),
                ]),
          ),
        ]),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/four.png',
                      semanticLabel: 'Four',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/five.png',
                      semanticLabel: 'Five',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/six.png',
                      semanticLabel: 'Six',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.green,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/multiplication.png',
                      semanticLabel: 'Multiplication',
                    ),
                  ),
                ]),
          ),
        ]),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/one.png',
                      semanticLabel: 'One',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/two.png',
                      semanticLabel: 'Two',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/three.png',
                      semanticLabel: 'Three',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.green,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    tooltip: 'Subtract',
                    child: Image.asset(
                      'lib/assets/icons/subtraction.png',
                      semanticLabel: 'Subtraction',
                    ),
                  ),
                ]),
          ),
        ]),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/zero.png',
                      semanticLabel: 'Zero',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/decimal.png',
                      semanticLabel: 'Decimal',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.blue,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/equal.png',
                      semanticLabel: 'Equal',
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.green,
                    elevation: 6,
                    enableFeedback: true,
                    onPressed: null,
                    shape: const RoundedRectangleBorder(),
                    child: Image.asset(
                      'lib/assets/icons/plus.png',
                      semanticLabel: 'Addition',
                    ),
                  ),
                ]),
          ),
        ]),
      ]),
    );
  }
}
