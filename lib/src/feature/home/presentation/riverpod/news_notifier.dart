part of 'news_provider.dart';

class NewsNotifier extends Notifier<BaseState> {
  late final NewsUseCase _newsUseCase;
  @override
  BaseState build() {
    _newsUseCase = ref.read(newsUseCaseProvider);
    return const BaseState();
  }

  Future<void> wallStreetJournalNews() async {
    state = state.copyWith(
      status: BaseStatus.initial,
    );

    try {
      final response = await _newsUseCase.wellStreet();

      if (response.$1.isEmpty) {
        state = state.copyWith(
          status: BaseStatus.success,
          data: response.$2,
        );
      } else {
        state = state.copyWith(
          status: BaseStatus.failure,
          error: response.$1,
        );
      }
    } catch (e, stackTrac) {
      Log.debug(stackTrac.toString());
      state = state.copyWith(
        status: BaseStatus.failure,
        error: e.toString(),
      );
    }
  }
}
