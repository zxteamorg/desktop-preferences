import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "wireless_controller.dart";

class WirelessPopup extends StatelessWidget {
  const WirelessPopup({Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Consumer<WirelessController>(
      builder: (
        BuildContext context,
        WirelessController value,
        Widget? child,
      ) =>
          this._buildContent(context, value),
    );
  }

  Widget _buildContent(
      final BuildContext context, final WirelessController controller) {
    //
    // TO DO something with controller
    //
    // const Icon(Icons.wifi, size: 36, color: Colors.black);
    final List<String> users = [
      "wi-fi",
      "wi-fi 2",
      "wi-fi 3",
      "wi-fi 4",
      "wi-fi 5"
    ];
    return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) => Divider(
              height: 20,
              color: Color.fromARGB(255, 154, 151, 151),
              thickness: 1,
            ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(users[index],
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.8),
                    decoration: TextDecoration.none)
            ),
          );
        });
  }
}
