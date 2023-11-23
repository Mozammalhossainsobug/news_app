class API {
  static const String prod = 'https://newsapi.org/v2/';
  static const String dev = 'https://newsapi.org/v2/';

  static const base = dev;

  static const String wellStreetJournal =
      'everything?domains=wsj.com&apiKey=9690b584760544179ac945fec2570b4d';
  static const String topHeadlines =
      'top-headlines?sources=techcrunch&apiKey=9690b584760544179ac945fec2570b4d';
  static const String topBusinessHeadlines =
      'top-headlines?country=us&category=business&apiKey=9690b584760544179ac945fec2570b4d';
  static const String appBusinessHeadlines =
      'everything?q=apple&from=2023-11-16&to=2023-11-16&sortBy=popularity&apiKey=9690b584760544179ac945fec2570b4d';
  static const String tesla =
      'everything?q=tesla&from=2023-10-17&sortBy=publishedAt&apiKey=9690b584760544179ac945fec2570b4d';
}
