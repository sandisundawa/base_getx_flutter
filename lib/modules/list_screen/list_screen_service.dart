import 'package:base_getx_flutter/models/genre_model.dart';

import '../../data/network/api.dart';

class List_screenService {

  Future<genreModel?> getGenre() async {
    try {
      var res = await Api.getGenre();
      genreModel dataJson;
      dataJson = genreModel.fromJson(res);
      return dataJson;
    } catch (e) {
      return null;
    }
  }

}