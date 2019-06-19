import 'package:json_annotation/json_annotation.dart';

/// This allows the `Card` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'card.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class Card{
  Card(this.id, this.name, this.company,this.title);
  int id;
  String name;
  String company;
  String division;
  String title;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);
}
