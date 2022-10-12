import "package:flutter/material.dart"
    show Alignment, Axis, BuildContext, Colors, Column, Container, Divider, EdgeInsets, Expanded, FontWeight, Icon, IconData, Icons, Key, ListTile, ListView, Row, ScrollPhysics, SingleChildScrollView, Spacer, StatelessWidget, TextDecoration, TextStyle, Widget;
import "package:flutter/widgets.dart"
    show
        BoxConstraints,
        ConstrainedBox,
        LayoutBuilder,
        MainAxisAlignment,
        MainAxisSize,
        SizedBox,
        Text;
import "package:provider/provider.dart" show Consumer;

import "wireless_controller.dart" show WirelessController;
import "wireless_service_contract.dart" show WirelessNetwork;
import "wireless_switchtile.dart" show WirelessSwitch;
import "my_expansion_widget.dart" show MyExpansionWidget;

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
    final BuildContext context,
    final WirelessController controller,
  ) {
    return Column(
      children: <Widget>[
        this._buildSection1(controller),
        const Divider(),
        this._buildSection2(controller),
        const Divider(),
        this._buildSection3(controller),
      ],
    );
  }

  Widget _buildSection1(
    WirelessController controller,
  ) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: <Widget>[
          const Text("Wi-Fi",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800)),
                  const Spacer(),
          WirelessSwitch(controller),
        ]));
  }

  Widget _buildSection2(
    WirelessController controller,
  ) {
    return SizedBox(
      height: 400,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                children: [
                  this._buildSection2_1(),
                  this._buildSection2_2(controller),
                ],
              )),
        );
      }),
    );
  }

  Widget _buildSection2_1() {
    return Column(
      children: const <Widget>[
        Text(
          "Preferred Network",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              decoration: TextDecoration.none),
        ),
      ],
    );
  }

  Widget _buildSection2_2(
    WirelessController controller,
  ) {
    final Widget section2Body = Column(
      children: controller.otherNetworks
          .map((WirelessNetwork wn) => Text(wn.name))
          .toList(growable: false),
    );

    return MyExpansionWidget(
      header: const Text("Other Networks"),
      body: section2Body,
    );
  }

  Widget _buildSection3(
    WirelessController controller,
  ) {
    return Column(
      children: const <Widget>[
        Text(
          "Network Preferences",
          style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              decoration: TextDecoration.none),
        ),
      ],
    );
  }

// Widget _buildWirelessNetworks(final WirelessController controller) {
//   final List<WirelessNetwork> wirelessNetworks = controller.otherNetworks;
//   return ListView.builder(
//     itemCount: wirelessNetworks.length,
//     itemBuilder: (BuildContext context, int index) {
//       final WirelessNetwork wirelessNetwork = wirelessNetworks[index];

//       final IconData icon =
//           this.resolveOtherNetworksIcon(wirelessNetwork.level);

//       final IconData? iconIsPublic =
//           this.resolveNetworksIsPublic(wirelessNetwork.isPublic);

//       return Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Row(
//           children: <Widget>[
//             Icon(icon, size: 36, color: Colors.black),
//             Text(wirelessNetwork.name,
//                 style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.black.withOpacity(0.8),
//                     decoration: TextDecoration.none)),
//             const Spacer(),
//             Icon(iconIsPublic, size: 26, color: Colors.black),
//           ],
//         ),
//       );
//     },
//   );
// }

  IconData resolveOtherNetworksIcon(int level) {
    if (level == 0) {
      return Icons.wifi_1_bar_rounded;
    }
    if (level == 1) {
      return Icons.wifi_1_bar;
    }
    if (level == 2) {
      return Icons.wifi_2_bar;
    }
    return Icons.wifi;
  }

  IconData? resolveNetworksIsPublic(bool isPublic) {
    if (isPublic == false) {
      return Icons.lock;
    }
    return null;
  }
// }
}
