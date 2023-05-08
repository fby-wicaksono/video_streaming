import 'package:json_annotation/json_annotation.dart';

part 'video_list_model.g.dart';

@JsonSerializable()
class VideoListModel {
  VideoListModel(this.resultCount, this.results);

  factory VideoListModel.fromJson(Map<String, dynamic> json) => _$VideoListModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoListModelToJson(this);

  final int resultCount;
  final List<Result> results;
}

@JsonSerializable()
class Result {
  Result(
    this.wrapperType,
    this.kind,
    this.artistId,
    this.collectionId,
    this.trackId,
    this.artistName,
    this.collectionName,
    this.trackName,
    this.collectionCensoredName,
    this.trackCensoredName,
    this.artistViewUrl,
    this.collectionViewUrl,
    this.trackViewUrl,
    this.previewUrl,
    this.artworkUrl30,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.trackPrice,
    this.releaseDate,
    this.collectionExplicitness,
    this.trackExplicitness,
    this.discCount,
    this.discNumber,
    this.trackCount,
    this.trackNumber,
    this.trackTimeMillis,
    this.country,
    this.currency,
    this.primaryGenreName,
  );

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  final String wrapperType;
  final String kind;
  final int artistId;
  final int? collectionId;
  final int trackId;
  final String artistName;
  final String? collectionName;
  final String trackName;
  final String? collectionCensoredName;
  final String trackCensoredName;
  final String? artistViewUrl;
  final String? collectionViewUrl;
  final String? trackViewUrl;
  final String? previewUrl;
  final String artworkUrl30;
  final String artworkUrl60;
  final String artworkUrl100;
  final double? collectionPrice;
  final double? trackPrice;
  final String releaseDate;
  final String? collectionExplicitness;
  final String trackExplicitness;
  final int? discCount;
  final int? discNumber;
  final int? trackCount;
  final int? trackNumber;
  final int? trackTimeMillis;
  final String country;
  final String currency;
  final String primaryGenreName;
}
