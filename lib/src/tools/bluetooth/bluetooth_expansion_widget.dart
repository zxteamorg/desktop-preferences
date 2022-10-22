import "package:flutter/material.dart"
    show Colors, ExpansionPanel, ExpansionPanelList;
import "package:flutter/widgets.dart"
    show BuildContext, EdgeInsets, Key, Row, State, StatefulWidget, Widget;

class BluetoothExpansionWidget extends StatefulWidget {
  final Widget header;
  final Widget body;
  const BluetoothExpansionWidget({
    Key? key,
    required this.header,
    required this.body,
  }) : super(key: key);

  @override
  State<BluetoothExpansionWidget> createState() => _BluetoothExpansionState();
}

class _BluetoothExpansionState extends State<BluetoothExpansionWidget> {
  bool _isExpanded;

  _BluetoothExpansionState() : this._isExpanded = false;

  @override
  Widget build(
    final BuildContext context,
  ) {
    return ExpansionPanelList(
      elevation: 0,
      expandedHeaderPadding: const EdgeInsets.all(0),
      expansionCallback: (_, __) {
        this.setState(() {
          this._isExpanded = !this._isExpanded;
        });
      },
      children: <ExpansionPanel>[
        ExpansionPanel(
          backgroundColor: Colors.grey[300],
          headerBuilder: (BuildContext context, bool b) => Row(
            children: <Widget>[
              this.widget.header,
            ],
          ),
          body: this.widget.body,
          isExpanded: this._isExpanded,
        )
      ],
    );
  }
}
