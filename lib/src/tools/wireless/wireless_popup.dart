import "package:flutter/material.dart"
    show
        Alignment,
        Axis,
        BuildContext,
        Colors,
        Column,
        Container,
        Divider,
        EdgeInsets,
        Expanded,
        ExpansionPanel,
        ExpansionPanelList,
        Icon,
        IconData,
        Icons,
        Key,
        ListTile,
        ListView,
        Material,
        Row,
        ScrollPhysics,
        SingleChildScrollView,
        Spacer,
        StatelessWidget,
        Text,
        TextDecoration,
        TextStyle,
        Widget;
import "package:provider/provider.dart" show Consumer;

import "wireless_controller.dart" show WirelessController;
import "wireless_service.dart" show WirelessNetwork;
import "wireless_switchtile.dart" show WirelessSwitchTile;

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
        ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              Container(
                height: 50,
                // color: Colors.red,
                child: this._buildSection2(),
              ),
              const Divider(),
              Container(
                height: 250,
                // color: Colors.yellow,
                child: this._buildSection3(),
              ),
            ]),
        const Divider(),
        this._buildSection4(),
      ],
    );
  }

  Widget _buildSection1(
    dynamic controller,
  ) {
    return Container(
        color: Colors.grey,
        child: Material(child: WirelessSwitchTile(controller)));
  }

  Widget _buildSection2() {
    return Column(
      children: const <Widget>[
        Text(
          "Prefred Network",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              decoration: TextDecoration.none),
        ),
        // Text(
        //   "Prefred Network",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 20,
        //       decoration: TextDecoration.none),
        // ),
        // Text(
        //   "Prefred Network",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 20,
        //       decoration: TextDecoration.none),
        // ),
        // Text(
        //   "Prefred Network",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 20,
        //       decoration: TextDecoration.none),
        // ),
        // Text(
        //   "Prefred Network",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 20,
        //       decoration: TextDecoration.none),
        // ),
        // Text(
        //   "Prefred Network",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 20,
        //       decoration: TextDecoration.none),
        // ),
        // Text(
        //   "Prefred Network",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 20,
        //       decoration: TextDecoration.none),
        // )
      ],
    );
  }

  Widget _buildSection3() {
    return SingleChildScrollView(
        child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {},
            children: [
          ExpansionPanel(
            backgroundColor: Colors.grey,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return const ListTile(
                title: Text("Other Networks"),
              );
            },
            body: Column(children: const <Widget>[
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
              Text("Wi-Fi"),
            ]),
            isExpanded: true,
          )
        ]));
  }
  // return Column(
  //   children: const <Widget>[
  //     // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  // Text(
  //   "Other Networks",
  //   style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20,
  //       decoration: TextDecoration.none),
  // ),
  //   ],
  // );
  // }

  Widget _buildSection4() {
    return Column(
      children: const <Widget>[
        Text(
          "Network Preferences",
          style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              decoration: TextDecoration.none),
        ),
        // Text(
        //   "Network Preferences",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 10,
        //       decoration: TextDecoration.none),
        // ),
        // Text(
        //   "Network Preferences",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 10,
        //       decoration: TextDecoration.none),
        // ),
        // Text(
        //   "Network Preferences",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 10,
        //       decoration: TextDecoration.none),
        // ),
        // Text(
        //   "Network Preferences",
        //   style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 10,
        //       decoration: TextDecoration.none),
        // ),
      ],
    );
  }

// Container(
//   color: Colors.grey,
// ),
// Material(child: WirelessSwitchTile(controller)),
// const Divider(),

// Container(
//   alignment: Alignment.topLeft,
//   height: 20,
//   color: Colors.grey,
//   child: const Text(
//     "Prefferred Network",
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 10,
//         decoration: TextDecoration.none),
//   ),
// ),
// const Divider(),
// Container(
//   height: 150,
//   color: Colors.grey,
//   child: this._buildWirelessNetworks(controller),
// ),
// const Divider(),
//       Container(
//         alignment: Alignment.topLeft,
//         height: 20,
//         color: Colors.grey,
//         child: const Text(
//           "Network Preferences",
//           style: TextStyle(
//               color: Colors.black,
//               fontSize: 10,
//               decoration: TextDecoration.none),
//         ),
//       )

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
