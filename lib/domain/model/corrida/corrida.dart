import 'package:freezed_annotation/freezed_annotation.dart';

part 'corrida.freezed.dart';
part 'corrida.g.dart';

@freezed
class Corrida with _$Corrida {
  const factory Corrida({
    String? id,
    required String idPiloto,
    required String idPista,
    required String idTemporada,
    required String tempo,
    required int voltas,
    required DateTime data,
  }) = _Corrida;

  factory Corrida.fromJson(Map<String, dynamic> json) =>
      _$CorridaFromJson(json);
}
