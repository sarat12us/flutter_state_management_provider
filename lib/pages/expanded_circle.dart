import 'package:demo_state_management/sclae.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpandedCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _scale = Provider.of<Scale>(context);
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
              )
          ),
          SizedBox(height: 250.0),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Expand'),
                  onPressed: () => _scale.expand(),
               ),
                SizedBox(width: 20.0),
                RaisedButton(
                  child: Text('Shrink'),
                  onPressed: () => _scale.shrink(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
