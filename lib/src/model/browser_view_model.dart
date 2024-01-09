import 'package:flutter/material.dart';

enum BrowserViewDependents {
  browserLaunchedDependent,
}

class BrowserViewModel extends InheritedModel<BrowserViewDependents> {
  final Future<void>? browserLaunchedDependent;

  const BrowserViewModel({
    super.key,
    this.browserLaunchedDependent,
    required super.child,
  });

  /// Browser View Model Update Notifier
  @override
  bool updateShouldNotify(BrowserViewModel oldWidget) {
    return browserLaunchedDependent != oldWidget.browserLaunchedDependent;
  }

  /// Browser View Model Dependent Update Notifier
  @override
  bool updateShouldNotifyDependent(
      BrowserViewModel oldWidget, Set<BrowserViewDependents> dependencies) {
    if (browserLaunchedDependent != oldWidget.browserLaunchedDependent &&
        dependencies.contains(BrowserViewDependents.browserLaunchedDependent)) {
      return true;
    }
    return false;
  }
}
