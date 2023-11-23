import 'package:flutter_network/flutter_network.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/core/netwrok_service/api_end_point.dart';

final networkProvider = Provider(
  (ref) {
    return RestClient(
      baseUrl: API.base,
      tokenCallBack: () async {},
    );
  },
);
