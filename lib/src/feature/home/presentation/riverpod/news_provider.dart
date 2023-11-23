import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/src/core/base/state.dart';
import 'package:news_app/src/core/utils/loggers/logger.dart';
import 'package:news_app/src/feature/home/domain/use_cases/use_cases.dart';

part 'news_notifier.dart';

final newsProvider =
    NotifierProvider<NewsNotifier, BaseState>(NewsNotifier.new);
