import 'package:flutter/cupertino.dart';
import 'package:flutter_http_rest_api/model/home_model.dart';
import 'package:flutter_http_rest_api/repository/home_repo.dart';

class HomeProvider with ChangeNotifier {
  HomeModel? model;

  bool isLoaded = false;

  Future<void> getCountryApi() async {
    model = await HomeRepo().getCountryData();
    setIsLoaded(true);
    notifyListeners();
  }

  bool getIsLoaded() {
    return isLoaded;
  }

  void setIsLoaded(bool value) {
    isLoaded = value;
    notifyListeners();
  }
}