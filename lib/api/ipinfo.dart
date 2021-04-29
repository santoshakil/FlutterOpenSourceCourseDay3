import 'package:aboltabolproject/models/ip_data_model.dart';
import 'package:http/http.dart';

Future<IpDataModel> getData() async {
  // var headers = {
  //   'Cookie': '__cfduid=d3819a94c1944e728cdbc28fcd1532c301619712392'
  // };

  var request =
      Request('GET', Uri.parse('https://ipapi.co/45.127.245.158/json/'));

  // request.headers.addAll(headers);

  StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var body = await response.stream.bytesToString();
    IpDataModel encodedData = ipDataModelFromJson(body);

    print(body);
    return encodedData;
  } else {
    print(response.reasonPhrase);
    return null;
  }
}
