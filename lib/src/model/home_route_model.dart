import 'package:flutter/material.dart';

enum HomeRouteDependents {
  homeRouteNavigationDependent,
  homeRouteTileDependent,
}

class HomeRouteModel extends InheritedModel<HomeRouteDependents> {
  final int? homeRouteNavigationDependent;
  final int? homeRouteTileDependent;

  const HomeRouteModel({
    super.key,
    this.homeRouteNavigationDependent,
    this.homeRouteTileDependent,
    required super.child,
  });

  /// Home Route Model Update Notifier
  @override
  bool updateShouldNotify(HomeRouteModel oldWidget) {
    return homeRouteNavigationDependent !=
            oldWidget.homeRouteNavigationDependent ||
        homeRouteTileDependent != oldWidget.homeRouteTileDependent;
  }

  /// Home Route Model Dependent Update Notifier
  @override
  bool updateShouldNotifyDependent(
      HomeRouteModel oldWidget, Set<HomeRouteDependents> dependencies) {
    if (homeRouteNavigationDependent !=
            oldWidget.homeRouteNavigationDependent &&
        dependencies
            .contains(HomeRouteDependents.homeRouteNavigationDependent)) {
      return true;
    }
    if (homeRouteTileDependent != oldWidget.homeRouteTileDependent &&
        dependencies.contains(HomeRouteDependents.homeRouteTileDependent)) {
      return true;
    }
    return false;
  }
}
