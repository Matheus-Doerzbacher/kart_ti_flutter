import 'package:freezed_annotation/freezed_annotation.dart';

part 'temporada.freezed.dart';
part 'temporada.g.dart';

@freezed
class Temporada with _$Temporada {
  const factory Temporada({
    String? id,
    required int ano,
    required bool atual,
    required String nome,
  }) = _Temporada;

  factory Temporada.fromJson(Map<String, dynamic> json) =>
      _$TemporadaFromJson(json);
}
