import 'dart:io';
import 'package:http/http.dart' as http;

class HTTPService {
  final String url;

  HTTPService({this.url});

  Future fetchData() async {
    print('Fetching data from: $url');
    try {
      final response = await http.get(url);
      return _bodyForResponse(response);
    } on SocketException {
      // TODO: Implement the case where there is a problem with the socket
      print('Handle socket error');
    }
  }

  String _bodyForResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response.body;
      default:
        // TODO: implement more satus codes handling such as 400s and 500s
        print('Handle other response statuses');
    }
  }
}
