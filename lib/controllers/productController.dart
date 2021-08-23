import 'package:app_mobile/models/Product.dart';
import 'package:app_mobile/services/remote_services.dart';
import 'package:get/state_manager.dart';

import '../models/Product.dart';

class ProductController extends GetxController {
  var productList = List<Product>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();

    if (products != null) {
      productList.value = products;
    }
  }
}
