import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/src/core/local_services/routes.dart';
import 'package:news_app/src/feature/details/presentation/pages/details_news.dart';
import 'package:news_app/src/feature/discovery/presentation/pages/discovery_page.dart';
import 'package:news_app/src/feature/home/domain/entities/entities.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.detailsPage:
        return MaterialPageRoute(
          builder: (_) => DetailsNewsPage(
            articlesEntity: routeSettings.arguments! as ArticlesEntity,
          ),
        );

      case Routes.discoveryPage:
        return MaterialPageRoute(
          builder: (_) => DiscoveryPage(),
        );
    }
  }
}
