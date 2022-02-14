import 'package:http/http.dart' as http;
import 'package:lekkiapp/core/services/appurl.dart';

class PropertyAPI {
  final client = http.Client();

  Future fetchPost() async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    final Uri uri = Uri.parse(ApiRoutes.GetPRoperty);

    try {
      final http.Response response = await client.get(uri, headers: headers);
      final statusCode = response.statusCode;
      final body = response.body;
      print("folA");
      if (statusCode <= 300) {
        print("folaaaaaaaaaaaaa");
        print(body);
        print(statusCode);
        return body;
      } else {
        print(body);
        print(statusCode);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future filteredPost({
    required final int sitting,
   required final int kitchen,
  }) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    print("raymond");
    print(sitting);
    print(kitchen);

    final Uri uri = Uri.parse(
        "https://sfc-lekki-property.herokuapp.com/api/v1/lekki/property?kitchen=$kitchen&sittingRoom=$sitting");

    try {
      final http.Response response = await client.get(uri, headers: headers);
      final statusCode = response.statusCode;
      final body = response.body;
      print("folA");
      if (statusCode <= 300) {
        print("folaaaaaaaaaaaaa");
        print(body);
        print(statusCode);
        return body;
      } else {
        print(body);
        print(statusCode);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
