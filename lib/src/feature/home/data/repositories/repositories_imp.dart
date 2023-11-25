import 'package:news_app/src/core/netwrok_service/request_handler.dart';
import 'package:news_app/src/feature/home/data/data_sources/data_source.dart';
import 'package:news_app/src/feature/home/data/models/wall_street_journal_model.dart';
import 'package:news_app/src/feature/home/domain/entities/entities.dart';
import 'package:news_app/src/feature/home/domain/repositories/repositories.dart';

class NewsRepositoryImp extends NewsRepository {
  NewsRepositoryImp({required this.dataSource});
  final NewsDataSource dataSource;

  @override
  Future<(String, List<ArticlesEntity>? articles)> wallStreet() {
    return dataSource.wallStreetNews().guard(
      (data) {
        return WallStreetJournal.fromJson(data).articles!;
      },
    );
  }
}
