import 'HTTPService.dart';

const _entitiesURL =
    'https://www.ma-na.co/entities_project/entities';

class EntitiesAPI {
  static Future fetchEntities() async {
    HTTPService service = HTTPService(url: _entitiesURL);
    return await service.fetchData();
  }
}
