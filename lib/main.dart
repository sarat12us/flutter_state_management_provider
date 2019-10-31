import 'package:demo_state_management/sclae.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'pages/expanded_circle.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Expanded Circle',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: ChangeNotifierProvider<Scale>(
          builder: (_) => Scale(1),
          child: ExpandedCircle(),
        )
    );
  }
}
