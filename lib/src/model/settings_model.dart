import 'package:flutter/material.dart';

enum SettingsAspects {
  settingsNavigationAspect,
  settingsTileAspect,
}

class HomeRouteModel extends InheritedModel<SettingsAspects> {
  final Color? settingsNavigationAspect;
  final Color? settingsTileAspect;

  const HomeRouteModel({
    super.key,
    this.settingsNavigationAspect,
    this.settingsTileAspect,
    required super.child,
  });

  // Home Route Model Update Notifier
  @override
  bool updateShouldNotify(HomeRouteModel oldWidget) {
    return settingsNavigationAspect != oldWidget.settingsNavigationAspect ||
        settingsTileAspect != oldWidget.settingsTileAspect;
  }

  // Home Route Model Dependent Update Notifier
  @override
  bool updateShouldNotifyDependent(
      HomeRouteModel oldWidget, Set<SettingsAspects> dependencies) {
    if (settingsNavigationAspect != oldWidget.settingsNavigationAspect &&
        dependencies.contains(SettingsAspects.settingsNavigationAspect)) {
      return true;
    }
    if (settingsTileAspect != oldWidget.settingsTileAspect &&
        dependencies.contains(SettingsAspects.settingsTileAspect)) {
      return true;
    }
    return false;
  }
}
