import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/feature/home/domain/entities/entities.dart';
import 'package:news_app/src/feature/home/domain/repositories/repositories.dart';

final newsUseCaseProvider = Provider<NewsUseCase>((ref) {
  return NewsUseCase(
    newsRepository: ref.read(newsRepositoryProvider),
  );
});

class NewsUseCase {
  NewsUseCase({required this.newsRepository});
  final NewsRepository newsRepository;

  Future<(String, List<ArticlesEntity>?)> wellStreet() async {
    return newsRepository.wallStreet();
  }
}
