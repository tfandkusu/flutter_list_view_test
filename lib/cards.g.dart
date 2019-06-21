// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) {
  return Card(
      json['id'] as int,
      json['name'] as String,
      json['company'] as String,
      json['division'] as String,
      json['title'] as String);
}

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'company': instance.company,
      'division': instance.division,
      'title': instance.title
    };

Cards _$CardsFromJson(Map<String, dynamic> json) {
  return Cards((json['list'] as List)
      ?.map((e) => e == null ? null : Card.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$CardsToJson(Cards instance) =>
    <String, dynamic>{'list': instance.list};
