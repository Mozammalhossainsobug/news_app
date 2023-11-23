import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/feature/home/data/data_sources/data_source.dart';
import 'package:news_app/src/feature/home/data/repositories/repositories_imp.dart';
import 'package:news_app/src/feature/home/domain/entities/entities.dart';

final newsRepositoryProvider = Provider<NewsRepositoryImp>((ref) {
  return NewsRepositoryImp(
    dataSource: ref.read(newsDataSourceProvider),
  );
});

abstract class NewsRepository {
  Future<(String, List<ArticlesEntity>? articles)> wallStreet();
}
