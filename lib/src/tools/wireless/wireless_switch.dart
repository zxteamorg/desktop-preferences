import "package:flutter/material.dart";

import "wireless_controller.dart" show WirelessController;

class WirelessSwitch extends StatelessWidget {
  final WirelessController controller;
  const WirelessSwitch(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          const Text("Wi-Fi",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800)),
          const Spacer(),
          Switch(
            value: this.controller.isEnabled,
            onChanged: (bool value) {
              if (this.controller.isEnabled) {
                this.controller.disable();
              } else {
                this.controller.enable();
              }
            },
          )
        ],
      ),
    );
  }
}
