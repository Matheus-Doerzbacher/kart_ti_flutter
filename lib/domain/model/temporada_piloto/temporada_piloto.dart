import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';
import 'package:kart_ti_flutter/domain/model/temporada/temporada.dart';

part 'temporada_piloto.freezed.dart';
part 'temporada_piloto.g.dart';

@freezed
class TemporadaPiloto with _$TemporadaPiloto {
  const factory TemporadaPiloto({
    String? id,
    required Piloto piloto,
    required Temporada temporada,
    required int pontos,
    required int vitorias,
  }) = _TemporadaPiloto;

  factory TemporadaPiloto.fromJson(Map<String, dynamic> json) =>
      _$TemporadaPilotoFromJson(json);
}
