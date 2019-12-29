import 'package:http/http.dart' as http;

class HTTPService {
  final String url;

  HTTPService({this.url});

  Future fetchData() async {
    print('Fetching data from: $url');

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      // Todo: implement error handling
      print('Error fetching data from $url ');
    }
  }
}
