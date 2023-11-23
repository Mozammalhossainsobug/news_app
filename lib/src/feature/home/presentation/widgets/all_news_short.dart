import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/core/utils/loggers/logger.dart';
import 'package:news_app/src/feature/home/domain/entities/entities.dart';
import 'package:news_app/src/feature/home/presentation/riverpod/news_provider.dart';

class AllNewsShort extends ConsumerWidget {
  const AllNewsShort({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newsProvider);
    final notifier = ref.read(newsProvider.notifier);

    if (state.status.isSuccess) {
      final List<ArticlesEntity> listOfArticles = state.data;

      return ListView.builder(
        itemCount: listOfArticles.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: Image.network(listOfArticles[index].urlToImage ??
                        'https://fl-1.cdn.flockler.com/embed/no-image.svg'),
                  ),
                  Text(
                    listOfArticles[index].title ?? 'title',
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else if (state.status.isLoading) {
      return const CircularProgressIndicator(
        color: Colors.red,
      );
    } else {
      return Container();
    }
  }
}
