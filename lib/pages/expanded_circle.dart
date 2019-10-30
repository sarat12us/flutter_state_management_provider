import 'package:demo_state_management/sclae.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpandedCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      final  _scale = Provider.of<Scale>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Circle'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              child: Transform.scale(
            scale: _scale.getScale(),
            child: FloatingActionButton(onPressed: () {}),
          )),
          Container(
              child: Padding(
            padding:
                const EdgeInsets.only(left: 100.0, right: 100.0, top: 200.0),
            child: RaisedButton(
              child: Text('Clieck to expand circle'),
              onPressed: () => _scale.expand(),
              color: Colors.red,
            ),
          )),
        ],
      ),
    );
  }
}
