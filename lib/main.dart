import 'package:aboltabolproject/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';

void main() {
  runApp(
    MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => AbolTabolProvider(),
        child: AbolTabol(),
      ),
    ),
  );
}
