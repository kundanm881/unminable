import 'dart:convert';

import 'package:http/http.dart' as https;
import 'package:unminable/models/pool_model.dart';
import 'package:unminable/my_strings.dart';

class PoolRequert {
  var _data;
  Future<PoolModel> getpoolsdata() async {
    await https
        .get(Uri.parse(MyStrings.baseUrl + MyStrings.pool))
        .then((value) {
      if (value.statusCode == 200) {
        _data = PoolModel.fromJson(jsonDecode(value.body));
        print(value.body);
      }
    });

    return _data;
  }
}
