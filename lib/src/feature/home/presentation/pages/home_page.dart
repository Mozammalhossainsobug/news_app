import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/src/feature/home/domain/entities/entities.dart';
import 'package:news_app/src/feature/home/presentation/riverpod/news_provider.dart';
import 'package:news_app/src/feature/home/presentation/widgets/all_news_short.dart';
import 'package:news_app/src/feature/home/presentation/widgets/breaking_news_poster.dart';
import 'package:news_app/src/feature/home/presentation/widgets/home_font_image.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    Future(() {
      ref.read(newsProvider.notifier).wallStreetJournalNews();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeFontImage(),
            BreakingNewsPoster(),
            SizedBox(
              height: 500,
              child: AllNewsShort(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
              ),
            ),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
