import "package:flutter/material.dart";

import "wireless_controller.dart" show WirelessController;

class MyExpansionWidget extends StatefulWidget {
  final WirelessController controller;
  const MyExpansionWidget(this.controller);

  @override
  State<MyExpansionWidget> createState() => _MyExpansionWidget();
}

class _MyExpansionWidget extends State<MyExpansionWidget> {
  @override
  Widget build(
    final BuildContext context,
  ) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {},
      children: <ExpansionPanel>[
        ExpansionPanel(
          backgroundColor: Colors.grey,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return const Text("Other Networks");
          },
          body: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
            ],
          ),
          isExpanded: false,
        ),
      ],
    );
  }
}
