import 'package:calculate_engine/src/model/home_route_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  // Home Route Navigation Drawer State
  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  int _homeRouteTile = 0;

  void homeRouteTile(int index) {
    setState(() {
      _homeRouteTile = index;
    });
  }

  // Home Route Navigation Drawer Widgets
  @override
  Widget build(BuildContext context) {
    return HomeRouteModel(
      homeRouteTileDependent: _homeRouteTile,
      child: Drawer(
        elevation: 6,
        semanticLabel: 'Navigation Drawer',
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset('lib/assets/icons/calculator_64.png'),
            ),
            ListTile(
              enableFeedback: true,
              leading: Image.asset('lib/assets/icons/parabola.png'),
              onTap: () => {
                context.go('/in_dev'),
                homeRouteTile(0),
              },
              selected: _homeRouteTile == 0,
              title: const Text(
                'Algebra Calculator',
                softWrap: true,
              ),
            ),
            ListTile(
              enableFeedback: true,
              leading: Image.asset('lib/assets/icons/summation.png'),
              onTap: () => {context.go('/in_dev'), homeRouteTile(1)},
              selected: _homeRouteTile == 1,
              title: const Text(
                'Calculus Calculator',
                softWrap: true,
              ),
            ),
            ListTile(
              enableFeedback: true,
              leading: Image.asset('lib/assets/icons/web_dev.png'),
              onTap: () => {context.go('/github'), homeRouteTile(2)},
              selected: _homeRouteTile == 2,
              title: const Text(
                'GitHub Source',
                softWrap: true,
              ),
            ),
            ListTile(
              enableFeedback: true,
              leading: Image.asset('lib/assets/icons/list.png'),
              onTap: () => {context.go('/in_dev'), homeRouteTile(3)},
              selected: _homeRouteTile == 3,
              title: const Text(
                'Lists Calculator',
                softWrap: true,
              ),
            ),
            ListTile(
              enableFeedback: true,
              leading: Image.asset('lib/assets/icons/matrix.png'),
              onTap: () => {context.go('/in_dev'), homeRouteTile(4)},
              selected: _homeRouteTile == 4,
              title: const Text(
                'Matrices Calculator',
                softWrap: true,
              ),
            ),
            ListTile(
              enableFeedback: true,
              leading: Image.asset('lib/assets/icons/analysis.png'),
              onTap: () => {context.go('/in_dev'), homeRouteTile(5)},
              selected: _homeRouteTile == 5,
              title: const Text(
                'Statistics Calculator',
                softWrap: true,
              ),
            ),
            ListTile(
              enableFeedback: true,
              leading: Image.asset('lib/assets/icons/trigonometry.png'),
              onTap: () => {context.go('/in_dev'), homeRouteTile(6)},
              selected: _homeRouteTile == 6,
              title: const Text(
                'Trigonometry Calculator',
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
