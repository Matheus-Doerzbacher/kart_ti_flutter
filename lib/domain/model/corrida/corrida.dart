import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';
import 'package:kart_ti_flutter/domain/model/pista/pista.dart';
import 'package:kart_ti_flutter/domain/model/resultado_piloto/resultado_piloto.dart';
import 'package:kart_ti_flutter/domain/model/temporada/temporada.dart';

part 'corrida.freezed.dart';
part 'corrida.g.dart';

@freezed
class Corrida with _$Corrida {
  const factory Corrida({
    String? id,
    Piloto? pilotoGanhador,
    required Pista pista,
    required Temporada temporada,
    String? tempo,
    int? voltas,
    required DateTime data,
    List<ResultadoPiloto>? resultados,
  }) = _Corrida;

  factory Corrida.fromJson(Map<String, dynamic> json) =>
      _$CorridaFromJson(json);
}
