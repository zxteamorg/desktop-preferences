import "package:flutter/material.dart";

///
/// Create a BrightnessSliderWidget class with a StatefulWidget extension
///
class BrightnessSliderWidget extends StatefulWidget {
  final double? currentBrightness;

  const BrightnessSliderWidget(
    this.currentBrightness, {
    Key? key,
  }) : super(key: key);

  @override
  State<BrightnessSliderWidget> createState() => _BrightnessSliderState();
}

class _BrightnessSliderState extends State<BrightnessSliderWidget> {
  double? currentBrightness;

  @override
  void initState() {
    super.initState();
    this.currentBrightness = this.widget.currentBrightness;
  }

  ///
  /// The method creates a slider to set brightness display
  ///
  @override
  Widget build(BuildContext context) {
    final double? localCurrentBrightness = this.currentBrightness;

    ///
    /// If currentBrightness is enable.
    ///
    if (localCurrentBrightness != null) {
      return Slider(
        value: localCurrentBrightness,
        min: 0,
        max: 1,
        thumbColor: Colors.white,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        onChanged: (double value) {
          setState(
            () {
              this.currentBrightness = value;
            },
          );
        },
      );
    }

    ///
    /// If currentBrightness is disable.
    ///
    else {
      return Slider(
        value: 0,
        thumbColor: Colors.grey,
        activeColor: Colors.grey,
        inactiveColor: Colors.grey,
        onChanged: (double value) {},
      );
    }
  }
}
