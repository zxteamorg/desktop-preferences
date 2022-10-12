import "package:flutter/material.dart"
    show Colors, ExpansionPanel, ExpansionPanelList;
import "package:flutter/widgets.dart"
    show BuildContext, EdgeInsets, Key, State, StatefulWidget, Widget;

class MyExpansionWidget extends StatefulWidget {
  final Widget header;
  final Widget body;
  const MyExpansionWidget({
    Key? key,
    required this.header,
    required this.body,
  }) : super(key: key);

  @override
  State<MyExpansionWidget> createState() => _MyExpansionState();
}

class _MyExpansionState extends State<MyExpansionWidget> {
  bool _isExpanded;

  _MyExpansionState() : this._isExpanded = false;

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
          backgroundColor: Colors.grey,
          headerBuilder: (BuildContext context, bool b) => this.widget.header,
          body: this.widget.body,
          isExpanded: this._isExpanded,
        )
      ],
    );
  }
}
