import 'package:freezed_annotation/freezed_annotation.dart';

part 'temporada_piloto.freezed.dart';
part 'temporada_piloto.g.dart';

@freezed
class TemporadaPiloto with _$TemporadaPiloto {
  const factory TemporadaPiloto({
    String? id,
    required String idPiloto,
    required String idTemporada,
    required int pontos,
    required int vitorias,
  }) = _TemporadaPiloto;

  factory TemporadaPiloto.fromJson(Map<String, dynamic> json) =>
      _$TemporadaPilotoFromJson(json);
}
