import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/src/core/local_services/routes.dart';
import 'package:news_app/src/feature/details/presentation/pages/details_news.dart';
import 'package:news_app/src/feature/home/domain/entities/entities.dart';
import 'package:news_app/src/feature/home/presentation/riverpod/news_provider.dart';

class AllNewsShort extends ConsumerWidget {
  const AllNewsShort({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final state = ref.watch(newsProvider);

    if (state.status.isSuccess) {
      final List<ArticlesEntity> listOfArticles = state.data;

      return ListView.builder(
        itemCount: listOfArticles.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.detailsPage,
                arguments: listOfArticles[index],
              );
            },
            child: Container(
              width: size.width * .65,
              margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                        height: size.height * .18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(
                                listOfArticles[index].urlToImage ??
                                    'https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg',
                              ),
                              fit: BoxFit.cover,
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      listOfArticles[index].title ?? 'title',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${DateTime.now().difference(DateTime.parse(listOfArticles[index].publishedAt!)).inHours.toString()} hours ago",
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        listOfArticles[index].author ?? 'author',
                        style: TextStyle(
                          fontSize: 10.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else if (state.status.isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.red,
        ),
      );
    } else {
      return Container(
        alignment: Alignment.center,
        child: const Text(
          'Loading Failed',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }
}
