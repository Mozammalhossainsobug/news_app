import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/src/feature/details/presentation/widgets/author_info.dart';
import 'package:news_app/src/feature/details/presentation/widgets/news_title_content.dart';
import 'package:news_app/src/feature/details/presentation/widgets/publish_info.dart';
import 'package:news_app/src/feature/details/presentation/widgets/views_info.dart';
import 'package:news_app/src/feature/home/domain/entities/entities.dart';

class DetailsNewsPage extends StatefulWidget {
  const DetailsNewsPage({super.key, required this.articlesEntity});

  final ArticlesEntity articlesEntity;

  @override
  State<DetailsNewsPage> createState() => _DetailsNewsPageState();
}

class _DetailsNewsPageState extends State<DetailsNewsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Stack(
              children: [
                Container(
                  height: size.height * .6,
                  width: size.width,
                  color: Colors.blue,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        widget.articlesEntity.urlToImage ??
                            'https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * .5,
              width: size.width,
              padding: const EdgeInsets.fromLTRB(24, 48, 24, 0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AuthorInfo(
                        authorName: widget.articlesEntity.author ?? 'Author',
                      ),
                      const SizedBox(width: 4),
                      PublishInfo(
                        publishHour: DateTime.now()
                            .difference(DateTime.parse(
                                widget.articlesEntity.publishedAt!))
                            .inHours
                            .toString(),
                      ),
                      const SizedBox(width: 2),
                      const ViewsInfo(),
                    ],
                  ),
                  NewsTitleAndContent(
                    title: widget.articlesEntity.title ?? 'Title',
                    content:
                        widget.articlesEntity.content ?? 'Content is not found',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
