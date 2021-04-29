import 'package:aboltabolproject/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AbolTabolChild extends StatelessWidget {
  const AbolTabolChild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');

    return Center(
      child: Consumer<AbolTabolProvider>(
        builder: (_, data, child) {
          return Text(
            data.count.toString(),
            style: TextStyle(
              fontSize: 40,
            ),
          );
        },
        child: Text('Outer Child'),
      ),
    );
  }
}
