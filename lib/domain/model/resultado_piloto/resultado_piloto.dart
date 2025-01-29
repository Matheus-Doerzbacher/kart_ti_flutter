import 'package:freezed_annotation/freezed_annotation.dart';

part 'resultado_piloto.freezed.dart';
part 'resultado_piloto.g.dart';

@freezed
class ResultadoPiloto with _$ResultadoPiloto {
  const factory ResultadoPiloto({
    String? id,
    required String idCorrida,
    required String idPiloto,
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
