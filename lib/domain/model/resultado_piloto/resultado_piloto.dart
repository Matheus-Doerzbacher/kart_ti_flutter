import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';
import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';

part 'resultado_piloto.freezed.dart';
part 'resultado_piloto.g.dart';

@freezed
class ResultadoPiloto with _$ResultadoPiloto {
  const factory ResultadoPiloto({
    String? id,
    required Corrida corrida,
    required Piloto piloto,
    @Default(false) bool isMelhorVoltaCorrida,
    required String melhorVolta,
    required int numeroDaMelhorVolta,
    required int numeroKart,
    required int pontos,
    required int posicao,
    required int posicaoQualificacao,
    required String tempoDoPilotoDaFrente,
    required String tempoDoPilotoLider,
    required String tempoQualificacao,
    required int totalDeVoltas,
    required String velocidadeMedia,
  }) = _ResultadoPiloto;

  factory ResultadoPiloto.fromJson(Map<String, dynamic> json) =>
      _$ResultadoPilotoFromJson(json);
}
