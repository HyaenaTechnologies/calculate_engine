import 'dart:async';

import 'package:calculate_engine/src/theme/color_schemes.dart';
import 'package:calculate_engine/src/theme/custom_color.dart';
import 'package:calculate_engine/src/widgets/github_view.dart';
import 'package:calculate_engine/src/widgets/home_route.dart';
import 'package:calculate_engine/src/widgets/in_dev.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CalculateEngine());
  usePathUrlStrategy();
}

final GoRouter _navigationRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/home',
  routes: <GoRoute>[
    GoRoute(
      name: 'initial_route',
      path: '/home',
      builder: (BuildContext context, GoRouterState state) => const HomeRoute(),
    ),
    GoRoute(
      name: 'github_browser_view',
      path: '/github',
      builder: (BuildContext context, GoRouterState state) =>
          const GitHubView(),
    ),
    GoRoute(
      name: 'in_development',
      path: '/in_dev',
      builder: (BuildContext context, GoRouterState state) => const InDev(),
    ),
  ],
);

class CalculateEngine extends StatefulWidget {
  const CalculateEngine({super.key});

  // Calculate Engine State
  @override
  State<CalculateEngine> createState() => _CalculateEngineState();
}

class _CalculateEngineState extends State<CalculateEngine> {
  // Calculate Engine Widgets
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      ColorScheme darkScheme;
      ColorScheme lightScheme;

      if (darkDynamic != null && lightDynamic != null) {
        darkScheme = darkDynamic.harmonized();
        darkCustomColors = darkCustomColors.harmonized(darkScheme);
        // Repeat for the light color scheme.
        lightScheme = lightDynamic.harmonized();
        lightCustomColors = lightCustomColors.harmonized(lightScheme);
      } else {
        // Otherwise, use fallback schemes.
        darkScheme = darkColorScheme;
        lightScheme = lightColorScheme;
      }
      return MaterialApp.router(
        darkTheme: ThemeData(
          colorScheme: darkScheme,
          extensions: [darkCustomColors],
          useMaterial3: true,
        ),
        theme: ThemeData(
          colorScheme: lightScheme,
          extensions: [lightCustomColors],
          useMaterial3: true,
        ),
        routerConfig: _navigationRouter,
      );
    });
  }
}
