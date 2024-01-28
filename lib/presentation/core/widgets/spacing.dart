import 'package:flutter/material.dart';

const double standardSpacingDeviceScale10 = 12;
const double standardSpacingDeviceScale20 = 13;
const double standardSpacingDeviceScale30 = 15;

/// A utility widget for creating spaced elements with standard dimensions,
/// ensuring a consistent appearance across devices with different pixel ratios.
class Spacing extends StatelessWidget {
  final double? widthFactor;
  final double? heightFactor;

  const Spacing._()
      : widthFactor = null,
        heightFactor = null;

  /// Creates a vertical spacer with the specified [factor].
  /// The [factor] parameter determines the scale of the spacing.
  const Spacing.vertical({
    double factor = 1,
  })  : heightFactor = factor,
        widthFactor = null;

  /// Creates a horizontal spacer with the specified [factor].
  /// The [factor] parameter determines the scale of the spacing.
  const Spacing.horizontal({
    double factor = 1,
  })  : widthFactor = factor,
        heightFactor = null;

  factory Spacing() {
    return const Spacing._();
  }

  @override
  Widget build(BuildContext context) {
    final standardSpacing = _standardSpacing(context);

    if (widthFactor != null) {
      return SizedBox(width: standardSpacing * widthFactor!);
    }
    if (heightFactor != null) {
      return SizedBox(height: standardSpacing * heightFactor!);
    }
    return Container();
  }

  /// Calculates the standard spacing based on the device's pixel ratio.
  double _standardSpacing(BuildContext context) {
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;
    if (pixelRatio == 1.0) {
      return standardSpacingDeviceScale10;
    }
    if (pixelRatio == 2.0) {
      return standardSpacingDeviceScale20;
    }
    return standardSpacingDeviceScale30;
  }
}
