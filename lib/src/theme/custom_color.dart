import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const customColor = Color(0xFFDE7B3B);

// Material Design Theme Dark
CustomColors darkCustomColors = const CustomColors(
  sourceCustomColor: Color(0xFFBF5A00),
  customColor: Color(0xFFFFB68B),
  onCustomColor: Color(0xFF522300),
  customColorContainer: Color(0xFF753400),
  onCustomColorContainer: Color(0xFFFFDBC8),
);

// Material Design Theme Light
CustomColors lightCustomColors = const CustomColors(
  sourceCustomColor: Color(0xFFBF5A00),
  customColor: Color(0xFF994700),
  onCustomColor: Color(0xFFFFFFFF),
  customColorContainer: Color(0xFFFFDBC8),
  onCustomColorContainer: Color(0xFF321300),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceCustomColor,
    required this.customColor,
    required this.onCustomColor,
    required this.customColorContainer,
    required this.onCustomColorContainer,
  });

  final Color? sourceCustomColor;
  final Color? customColor;
  final Color? onCustomColor;
  final Color? customColorContainer;
  final Color? onCustomColorContainer;

  @override
  CustomColors copyWith({
    Color? sourceCustomColor,
    Color? customColor,
    Color? onCustomColor,
    Color? customColorContainer,
    Color? onCustomColorContainer,
  }) {
    return CustomColors(
      sourceCustomColor: sourceCustomColor ?? this.sourceCustomColor,
      customColor: customColor ?? this.customColor,
      onCustomColor: onCustomColor ?? this.onCustomColor,
      customColorContainer: customColorContainer ?? this.customColorContainer,
      onCustomColorContainer:
          onCustomColorContainer ?? this.onCustomColorContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceCustomColor:
          Color.lerp(sourceCustomColor, other.sourceCustomColor, t),
      customColor: Color.lerp(customColor, other.customColor, t),
      onCustomColor: Color.lerp(onCustomColor, other.onCustomColor, t),
      customColorContainer:
          Color.lerp(customColorContainer, other.customColorContainer, t),
      onCustomColorContainer:
          Color.lerp(onCustomColorContainer, other.onCustomColorContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceCustomColor]
  ///   * [CustomColors.customColor]
  ///   * [CustomColors.onCustomColor]
  ///   * [CustomColors.customColorContainer]
  ///   * [CustomColors.onCustomColorContainer]
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceCustomColor: sourceCustomColor!.harmonizeWith(dynamic.primary),
      customColor: customColor!.harmonizeWith(dynamic.primary),
      onCustomColor: onCustomColor!.harmonizeWith(dynamic.primary),
      customColorContainer:
          customColorContainer!.harmonizeWith(dynamic.primary),
      onCustomColorContainer:
          onCustomColorContainer!.harmonizeWith(dynamic.primary),
    );
  }
}
