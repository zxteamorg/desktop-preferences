import "package:flutter/material.dart";

import "wireless_controller.dart" show WirelessController;

class WirelessSwitchTile extends StatefulWidget {
  const WirelessSwitchTile({super.key});

  @override
  State<WirelessSwitchTile> createState() => _WirelessSwitchTileState();
}

class _WirelessSwitchTileState extends State<WirelessSwitchTile> {
  bool _wireless = false;

  @override
  Widget build(
    final BuildContext context, 
    final WirelessController controller,
    ) {
    return Ink(
        color: Colors.grey,
        child: SwitchListTile(
          value: _wireless,
          onChanged: (bool value) {
            setState(() {
              _wireless = value;
            if (controller.isEnabled) {
                controller.disable();
              } else {
                controller.enable();
              }
            });
          },
          title: const Text("Wi-Fi",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800)),
        ));
  }
}
