import 'package:adaptive_components/adaptive_components.dart';
import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InDev extends StatefulWidget {
  const InDev({super.key});

  // In Development State
  @override
  State<InDev> createState() => _InDevState();
}

class _InDevState extends State<InDev> {
  // In Development Widgets
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(
        elevation: 6,
        leading: IconButton(
          icon: Image.asset('lib/assets/icons/back_button.png'),
          enableFeedback: true,
          onPressed: () => {
            context.go('/home'),
          },
          tooltip: 'Home',
        ),
        title: const Text(
          'Development',
          softWrap: true,
        ),
      ),
      body: AdaptiveContainer(
        child: ListView(children: <Widget>[
          Image.asset('lib/assets/in_development.png'),
        ]),
      ),
    );
  }
}
