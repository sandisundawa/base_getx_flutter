import 'package:base_getx_flutter/models/genre_model.dart';
import 'package:get/get.dart';

import 'package:base_getx_flutter/modules/list_screen/list_screen.dart';

class List_screenController extends GetxController {

  final List_screenService _service;

  var listGenre = <Genres>[].obs;

  @override
  void onInit() {
    getGenre();
    super.onInit();
  }

  Future getGenre() async {
    try {
      genreModel? genreResponse = await _service.getGenre();
      if (genreResponse != null) {
        listGenre.value = genreResponse.genres!;
        print("kesini :"+listGenre.value.first.name.toString());
      } else {
        print("kesini");
        // error.checkErrorPopup(StringValue.connectionError);
      }
    } catch (e) {
      // Functions.hideLoading();
      // error.checkErrorPopup(e);
    }
  }

  List_screenController(this._service);

}