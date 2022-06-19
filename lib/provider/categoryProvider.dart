import 'package:flutter/cupertino.dart';
import 'package:foodpanapp/http/custom_http_request.dart';
import 'package:foodpanapp/model/category_model.dart';
import 'package:provider/provider.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel> categoryList = [];
  late CategoryModel categoryModel;

  getCategory() async {
    categoryList = await CustomHttpRequest().getAllCategory();
    notifyListeners();
  }
}
