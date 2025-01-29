import 'package:freezed_annotation/freezed_annotation.dart';

part 'pista.freezed.dart';
part 'pista.g.dart';

@freezed
class Pista with _$Pista {
  const factory Pista({
    String? id,
    required String nome,
    required String local,
    required String urlImage,
  }) = _Pista;

  factory Pista.fromJson(Map<String, dynamic> json) => _$PistaFromJson(json);
}
