// json_annotationライブラリを使う
import 'package:json_annotation/json_annotation.dart';

// 自動生成されたメソッドにこのクラスからアクセスできるようにする。
part 'card.g.dart';

// アノテーションをつける
@JsonSerializable()
class Card {
  Card(this.id, this.name, this.company, this.division, this.title);

  int id;
  String name;
  String company;
  String division;
  String title;

  // MapからCardへの変換
  factory Card.fromJson(Map<String, dynamic> json) =>
      _$CardFromJson(json) /*自動生成される*/;

  // CardからMapへの変換
  Map<String, dynamic> toJson() => _$CardToJson(this) /*自動生成される*/;
}
