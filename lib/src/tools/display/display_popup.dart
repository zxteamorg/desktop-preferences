// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "display_brightness_slider_widget.dart";
import "display_controller.dart";

class DisplayPopup extends StatelessWidget {
  const DisplayPopup({Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Consumer<DisplayController>(
      builder: (
        BuildContext context,
        DisplayController value,
        Widget? child,
      ) =>
          this._buildContent(context, value),
    );
  }

  Widget _buildContent(
      final BuildContext context, final DisplayController controller) {
    //
    // TO DO something with controller
    //

    // ignore: prefer_const_literals_to_create_immutables
    return Column(children: <Widget>[
      BrightnessSliderWidget(
        false, /* TODO */
      ),
      BrightnessSliderWidget(
        true, /* TODO pass 15% */
      ),
      BrightnessSliderWidget(
        true, /* TODO pass 75% */
      ),
    ]);
  }
}
