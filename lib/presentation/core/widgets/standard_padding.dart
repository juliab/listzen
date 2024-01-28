import 'package:flutter/material.dart';

const double standardPaddingDeviceScale10 = 12;
const double standardPaddingDeviceScale20 = 14;
const double standardPaddingDeviceScale30 = 15;

/// A custom padding widget that provides convenient ways to apply padding
/// to its child based on specified factors. The padding factors are scaled
/// according to the device's pixel ratio to ensure consistent appearance
/// across different devices.
class StandardPadding extends StatelessWidget {
  final Widget child;
  final double topFactor;
  final double bottomFactor;
  final double leftFactor;
  final double rightFactor;

  /// Creates a CustomPadding with padding applied uniformly on all sides.
  /// The [factor] parameter controls the scaling of standard padding values
  /// based on the current device pixel ratio.
  const StandardPadding.all({
    required this.child,
    double factor = 1,
  })  : topFactor = factor,
        bottomFactor = factor,
        leftFactor = factor,
        rightFactor = factor;

  /// Creates a CustomPadding with vertical padding applied.
  /// The [factor] parameter controls the scaling of standard padding values
  /// based on the current device pixel ratio.
  const StandardPadding.vertical({
    required this.child,
    double factor = 1,
  })  : topFactor = factor,
        bottomFactor = factor,
        leftFactor = 0,
        rightFactor = 0;

  /// Creates a CustomPadding with horizontal padding applied.
  /// The [factor] parameter controls the scaling of standard padding values
  /// based on the current device pixel ratio.
  const StandardPadding.horizontal({
    required this.child,
    double factor = 1,
  })  : topFactor = 0,
        bottomFactor = 0,
        leftFactor = factor,
        rightFactor = factor;

  /// Creates a CustomPadding with padding applied selectively on specified
  /// sides. The [factor] parameter controls the scaling of standard padding
  /// values based on the current device pixel ratio.
  const StandardPadding.only({
    required this.child,
    this.topFactor = 0,
    this.bottomFactor = 0,
    this.leftFactor = 0,
    this.rightFactor = 0,
  });

  /// Creates [EdgeInsets] instance with padding on all sides.
  /// The [factor] parameter controls the scaling of standard padding values
  /// based on the current device pixel ratio.
  static EdgeInsets edgeInsetsAll({
    required BuildContext context,
    double factor = 1,
  }) {
    return EdgeInsets.all(standardPadding(context) * factor);
  }

  /// Creates [EdgeInsets] instance with symmetric padding.
  /// The [factor] parameter controls the scaling of standard padding values
  /// based on the current device pixel ratio.
  static EdgeInsets edgeInsetsSymmetric({
    required BuildContext context,
    double verticalFactor = 0,
    double horizontalFactor = 0,
  }) {
    final padding = standardPadding(context);
    return EdgeInsets.symmetric(
      vertical: padding * verticalFactor,
      horizontal: padding * horizontalFactor,
    );
  }

  /// Creates [EdgeInsets] instance with padding applied selectively on
  /// specified sides. The [factor] parameter controls the scaling of standard
  /// padding values based on the current device pixel ratio.
  static EdgeInsets edgeInsetsOnly({
    required BuildContext context,
    double topFactor = 0,
    double bottomFactor = 0,
    double leftFactor = 0,
    double rightFactor = 0,
  }) {
    final padding = standardPadding(context);
    return EdgeInsets.only(
      top: padding * topFactor,
      bottom: padding * bottomFactor,
      left: padding * leftFactor,
      right: padding * rightFactor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final standartPadding = standardPadding(context);
    final edgeInsets = EdgeInsets.only(
      top: standartPadding * topFactor,
      bottom: standartPadding * bottomFactor,
      left: standartPadding * leftFactor,
      right: standartPadding * rightFactor,
    );
    return Padding(
      padding: edgeInsets,
      child: child,
    );
  }

  /// Calculates the standard padding based on the device's pixel ratio.
  static double standardPadding(BuildContext context) {
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;
    if (pixelRatio == 1.0) {
      return standardPaddingDeviceScale10;
    }
    if (pixelRatio == 2.0) {
      return standardPaddingDeviceScale20;
    }
    return standardPaddingDeviceScale30;
  }
}
