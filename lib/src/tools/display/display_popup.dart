// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "display_brightness_slider_widget.dart";
import "display_controller.dart";
import "display_service_contract.dart";

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

    final List<DisplayDevice> displays = controller.displays;

    // ignore: prefer_const_literals_to_create_immutables
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        this._buildHeaderSection(controller),
        const Divider(),
        ...displays
            .map(
              (final DisplayDevice display) => BrightnessSliderWidget(
                controller,
                display,
                display.brightness,
              ),
            )
            .toList(),
      ],
    );
  }

  Widget _buildHeaderSection(
    DisplayController controller,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: const <Widget>[
          Text(
            "DisplayPopup",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w800),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
