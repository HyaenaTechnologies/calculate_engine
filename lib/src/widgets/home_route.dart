import 'package:adaptive_components/adaptive_components.dart';
import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:calculate_engine/src/model/home_route_model.dart';
import 'package:calculate_engine/src/widgets/basic_calculator.dart';
import 'package:calculate_engine/src/widgets/home_drawer.dart';
import 'package:calculate_engine/src/widgets/openstax_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  // Home Route State
  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  int _homeRouteNavigation = 0;

  // Home Route Widgets
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(
        actions: <Widget>[
          ButtonBar(
            children: <Widget>[
              IconButton(
                enableFeedback: true,
                icon: Image.asset('lib/assets/icons/settings.png'),
                onPressed: () => {
                  context.go('/in_dev'),
                },
                tooltip: 'Settings',
              ),
            ],
          ),
        ],
        elevation: 6,
        title: const Text(
          'Home',
          softWrap: true,
        ),
      ),
      body: <Widget>[
        AdaptiveContainer(
          child: const BasicCalculator(),
        ),
        AdaptiveContainer(
          child: const OpenStaxView(),
        ),
      ][_homeRouteNavigation],
      bottomNavigationBar: HomeRouteModel(
        homeRouteNavigationAspect: _homeRouteNavigation,
        child: NavigationBar(
          elevation: 6,
          onDestinationSelected: (int index) {
            setState(() {
              _homeRouteNavigation = index;
            });
          },
          selectedIndex: _homeRouteNavigation,
          destinations: <Widget>[
            NavigationDestination(
              icon: Image.asset('lib/assets/icons/calculator.png'),
              label: 'Basic',
              tooltip: 'Basic Calculator',
            ),
            NavigationDestination(
              icon: Image.asset('lib/assets/icons/book.png'),
              label: 'openStax',
              tooltip: 'OpenStax Website',
            ),
          ],
        ),
      ),
      drawer: const HomeDrawer(),
    );
  }
}
