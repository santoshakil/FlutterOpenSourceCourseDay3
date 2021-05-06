import 'package:aboltabolproject/api/ipinfo.dart';
import 'package:aboltabolproject/models/ip_data_model.dart';
import 'package:aboltabolproject/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/components.dart';

class AbolTabol extends StatefulWidget {
  @override
  _AbolTabolState createState() => _AbolTabolState();
}

class _AbolTabolState extends State<AbolTabol> {
  Future<IpDataModel> data;

  @override
  void initState() {
    super.initState();
    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<AbolTabolProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('AbolTabol'),
      ),
      body: Center(
        child: FutureBuilder<IpDataModel>(
          future: data,
          builder: (context, snapshot) {
            return snapshot.hasData
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        snapshot.data.countryPopulation.toString(),
                        style: TextStyle(fontSize: 40),
                      ),
                      AbolTabolChild(),
                    ],
                  )
                : CircularProgressIndicator();
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => _provider.increase(),
            child: Icon(Icons.add),
          ),
          SizedBox(width: 20.0),
          FloatingActionButton(
            onPressed: () => _provider.deccrease(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
