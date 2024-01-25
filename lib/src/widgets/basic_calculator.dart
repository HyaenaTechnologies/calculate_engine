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
          '/// Output',
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        const Text(
          '/// Input',
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/delete.png',
                      semanticLabel: 'Clear',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/percent.png',
                      semanticLabel: 'Percentage',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/square_root.png',
                      semanticLabel: 'Square Root',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/backspace.png',
                      semanticLabel: 'Backspace',
                    ),
                    onPressed: null,
                  ),
                ]),
          ),
        ]),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/seven.png',
                      semanticLabel: 'Seven',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/eight.png',
                      semanticLabel: 'Eight',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/nine.png',
                      semanticLabel: 'Nine',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/division.png',
                      semanticLabel: 'Division',
                    ),
                    onPressed: null,
                  ),
                ]),
          ),
        ]),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/four.png',
                      semanticLabel: 'Four',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/five.png',
                      semanticLabel: 'Five',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/six.png',
                      semanticLabel: 'Six',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/multiplication.png',
                      semanticLabel: 'Multiplication',
                    ),
                    onPressed: null,
                  ),
                ]),
          ),
        ]),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/one.png',
                      semanticLabel: 'One',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/two.png',
                      semanticLabel: 'Two',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/three.png',
                      semanticLabel: 'Three',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/subtraction.png',
                      semanticLabel: 'Subtraction',
                    ),
                    onPressed: null,
                  ),
                ]),
          ),
        ]),
        Flex(direction: Axis.horizontal, children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            flex: 6,
            child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/zero.png',
                      semanticLabel: 'Zero',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/decimal.png',
                      semanticLabel: 'Decimal',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/equal.png',
                      semanticLabel: 'Equal',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    enableFeedback: true,
                    icon: Image.asset(
                      'lib/assets/icons/plus.png',
                      semanticLabel: 'Addition',
                    ),
                    onPressed: null,
                  ),
                ]),
          ),
        ]),
      ]),
    );
  }
}
