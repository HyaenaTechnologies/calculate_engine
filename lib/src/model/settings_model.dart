import 'package:flutter/material.dart';

enum SettingsDependents {
  darkSchemeDependent,
  lightSchemeDependent,
}

class SettingsModel extends InheritedModel<SettingsDependents> {
  final ColorScheme? darkSchemeDependent;
  final ColorScheme? lightSchemeDependent;

  const SettingsModel({
    super.key,
    this.darkSchemeDependent,
    this.lightSchemeDependent,
    required super.child,
  });

  /// Settings Model Color Scheme
  static ColorScheme? darkSchemeOf(BuildContext context) {
    return InheritedModel.inheritFrom<SettingsModel>(context,
            aspect: SettingsDependents.darkSchemeDependent)
        ?.darkSchemeDependent;
  }

  /// Settings Model Color Scheme
  static ColorScheme? lightSchemeOf(BuildContext context) {
    return InheritedModel.inheritFrom<SettingsModel>(context,
            aspect: SettingsDependents.lightSchemeDependent)
        ?.lightSchemeDependent;
  }

  /// Settings Model Update Notifier
  @override
  bool updateShouldNotify(SettingsModel oldWidget) {
    return darkSchemeDependent != oldWidget.darkSchemeDependent ||
        lightSchemeDependent != oldWidget.lightSchemeDependent;
  }

  /// Settings Dependent Update Notifier
  @override
  bool updateShouldNotifyDependent(
      SettingsModel oldWidget, Set<SettingsDependents> dependencies) {
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
