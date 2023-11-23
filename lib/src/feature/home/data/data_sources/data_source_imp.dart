part of 'data_source.dart';

class NewsDataSourceImp extends NewsDataSource {
  NewsDataSourceImp({required this.restClient});

  final RestClient restClient;

  @override
  Future<Response> wallStreetNews() async {
    final response = await restClient.get(
      APIType.public,
      API.wellStreetJournal,
    );

    return response;
  }
}
