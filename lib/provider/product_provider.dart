import 'package:flutter/cupertino.dart';
import 'package:foodpanapp/http/custom_http_request.dart';
import 'package:foodpanapp/model/product_model.dart';
import 'package:provider/provider.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> productList = [];
  late ProductModel productModel;

  getProduct() async {
    productList = await CustomHttpRequest().getAllProduct();
    notifyListeners();
  }
}
