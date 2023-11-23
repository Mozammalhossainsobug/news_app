import 'package:dio/dio.dart';
import 'package:flutter_network/flutter_network.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/core/netwrok_service/api_end_point.dart';
import 'package:news_app/src/core/netwrok_service/network_provider.dart';

part 'data_source_imp.dart';

final newsDataSourceProvider = Provider<NewsDataSource>(
  (ref) {
    return NewsDataSourceImp(
      restClient: ref.read(networkProvider),
    );
  },
);

abstract class NewsDataSource {
  Future<Response> wallStreetNews();
}
