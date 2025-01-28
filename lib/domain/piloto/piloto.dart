import 'package:freezed_annotation/freezed_annotation.dart';

part 'piloto.freezed.dart';
part 'piloto.g.dart';

@freezed
class Piloto with _$Piloto {
  const factory Piloto({
    String? id,
    required String nome,
    required String urlImage,
  }) = _Piloto;

  factory Piloto.fromJson(Map<String, dynamic> json) => _$PilotoFromJson(json);
}
