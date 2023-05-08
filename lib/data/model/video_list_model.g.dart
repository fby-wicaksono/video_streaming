// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoListModel _$VideoListModelFromJson(Map<String, dynamic> json) =>
    VideoListModel(
      json['resultCount'] as int,
      (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideoListModelToJson(VideoListModel instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      json['wrapperType'] as String,
      json['kind'] as String,
      json['artistId'] as int,
      json['collectionId'] as int?,
      json['trackId'] as int,
      json['artistName'] as String,
      json['collectionName'] as String?,
      json['trackName'] as String,
      json['collectionCensoredName'] as String?,
      json['trackCensoredName'] as String,
      json['artistViewUrl'] as String?,
      json['collectionViewUrl'] as String?,
      json['trackViewUrl'] as String?,
      json['previewUrl'] as String?,
      json['artworkUrl30'] as String,
      json['artworkUrl60'] as String,
      json['artworkUrl100'] as String,
      (json['collectionPrice'] as num?)?.toDouble(),
      (json['trackPrice'] as num?)?.toDouble(),
      json['releaseDate'] as String,
      json['collectionExplicitness'] as String?,
      json['trackExplicitness'] as String,
      json['discCount'] as int?,
      json['discNumber'] as int?,
      json['trackCount'] as int?,
      json['trackNumber'] as int?,
      json['trackTimeMillis'] as int?,
      json['country'] as String,
      json['currency'] as String,
      json['primaryGenreName'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'wrapperType': instance.wrapperType,
      'kind': instance.kind,
      'artistId': instance.artistId,
      'collectionId': instance.collectionId,
      'trackId': instance.trackId,
      'artistName': instance.artistName,
      'collectionName': instance.collectionName,
      'trackName': instance.trackName,
      'collectionCensoredName': instance.collectionCensoredName,
      'trackCensoredName': instance.trackCensoredName,
      'artistViewUrl': instance.artistViewUrl,
      'collectionViewUrl': instance.collectionViewUrl,
      'trackViewUrl': instance.trackViewUrl,
      'previewUrl': instance.previewUrl,
      'artworkUrl30': instance.artworkUrl30,
      'artworkUrl60': instance.artworkUrl60,
      'artworkUrl100': instance.artworkUrl100,
      'collectionPrice': instance.collectionPrice,
      'trackPrice': instance.trackPrice,
      'releaseDate': instance.releaseDate,
      'collectionExplicitness': instance.collectionExplicitness,
      'trackExplicitness': instance.trackExplicitness,
      'discCount': instance.discCount,
      'discNumber': instance.discNumber,
      'trackCount': instance.trackCount,
      'trackNumber': instance.trackNumber,
      'trackTimeMillis': instance.trackTimeMillis,
      'country': instance.country,
      'currency': instance.currency,
      'primaryGenreName': instance.primaryGenreName,
    };
