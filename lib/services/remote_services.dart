import 'package:app_mobile/models/Product.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get('http://10.0.2.2:5000/api/product');
    if (response.statusCode == 200) {
      var jsonString = response.body;

      return productFromJson(jsonString);
    } else {
      //show Error Message
      print('erro');
      return null;
    }
  }
}
