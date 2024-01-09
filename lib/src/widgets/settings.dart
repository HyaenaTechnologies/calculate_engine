import 'package:adaptive_components/adaptive_components.dart';
import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:calculate_engine/src/model/settings_model.dart';
import 'package:calculate_engine/src/theme/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  /// Settings Page State
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ColorScheme darkScheme = darkColorScheme;

  /// Settings Page Widgets
  @override
  Widget build(BuildContext context) {
    ColorScheme darkScheme = SettingsModel.darkSchemeOf(context)!;
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
              child: SettingsModel(
                child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(
                        backgroundColor: Colors.blue,
                        elevation: 6,
                        enableFeedback: true,
                        onPressed: () {
                          setState(() {
                            if (darkScheme == darkColorScheme) {
                              darkScheme = lightColorScheme;
                            } else {
                              darkScheme = darkColorScheme;
                            }
                          });
                        },
                        shape: const RoundedRectangleBorder(),
                        child: Image.asset(
                          'lib/assets/icons/brightness.png',
                          semanticLabel: 'Clear',
                        ),
                      ),
                    ]),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
