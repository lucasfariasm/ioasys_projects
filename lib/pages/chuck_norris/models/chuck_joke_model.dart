class ChuckJokeModel {
  final String id;
  final String iconUrl;
  final String url;
  final String joke;
  ChuckJokeModel({
    required this.id,
    required this.iconUrl,
    required this.url,
    required this.joke,
  });

  factory ChuckJokeModel.fromJson(json) {
    return ChuckJokeModel(
      id: json['id'] ?? '',
      url: json['url'] ?? '',
      iconUrl: json['icon_url'] ?? '',
      joke: json['value'] ?? '',
    );
  }
  
  Map toJson() {
    final data = {};

    data['icon_url'] = iconUrl;
    data['id'] = id;
    data['value'] = joke;
    data['url'] = url;

    return data;
  }
}
