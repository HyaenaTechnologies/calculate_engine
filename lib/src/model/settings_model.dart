import 'package:flutter/material.dart';

enum SettingsDependents {
  darkSchemeDependent,
  lightSchemeDependent,
}

class HomeRouteModel extends InheritedModel<SettingsDependents> {
  final ColorScheme? darkSchemeDependent;
  final ColorScheme? lightSchemeDependent;

  const HomeRouteModel({
    super.key,
    this.darkSchemeDependent,
    this.lightSchemeDependent,
    required super.child,
  });

  // Home Route Model Update Notifier
  @override
  bool updateShouldNotify(HomeRouteModel oldWidget) {
    return darkSchemeDependent != oldWidget.darkSchemeDependent ||
        lightSchemeDependent != oldWidget.lightSchemeDependent;
  }

  // Home Route Model Dependent Update Notifier
  @override
  bool updateShouldNotifyDependent(
      HomeRouteModel oldWidget, Set<SettingsDependents> dependencies) {
    if (darkSchemeDependent != oldWidget.darkSchemeDependent &&
        dependencies.contains(SettingsDependents.darkSchemeDependent)) {
      return true;
    }
    if (lightSchemeDependent != oldWidget.lightSchemeDependent &&
        dependencies.contains(SettingsDependents.lightSchemeDependent)) {
      return true;
    }
    return false;
  }
}
