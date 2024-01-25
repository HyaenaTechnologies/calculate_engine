import 'package:adaptive_components/adaptive_components.dart';
import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsRoute extends StatefulWidget {
  const SettingsRoute({super.key});

  // Settings Route State
  @override
  State<SettingsRoute> createState() => _SettingsRouteState();
}

class _SettingsRouteState extends State<SettingsRoute> {
  // Settings Route Widgets
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
          'Settings',
          softWrap: true,
        ),
      ),
      body: AdaptiveContainer(
        child: ListView(children: <Widget>[
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
                        'lib/assets/icons/brightness.png',
                        semanticLabel: 'Color Mode',
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                    ),
                  ]),
            ),
          ]),
        ]),
      ),
    );
  }
}

class StatelessColorScheme extends StatelessWidget {
  const StatelessColorScheme({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(12.0),
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
      child: child,
    );
  }
}
