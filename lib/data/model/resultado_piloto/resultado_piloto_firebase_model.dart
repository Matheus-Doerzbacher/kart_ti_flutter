import 'package:freezed_annotation/freezed_annotation.dart';

part 'resultado_piloto_firebase_model.freezed.dart';
part 'resultado_piloto_firebase_model.g.dart';

@freezed
class ResultadoPilotoFirebaseModel with _$ResultadoPilotoFirebaseModel {
  const factory ResultadoPilotoFirebaseModel({
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
  }) = _ResultadoPilotoFirebaseModel;

  factory ResultadoPilotoFirebaseModel.fromJson(Map<String, dynamic> json) =>
      _$ResultadoPilotoFirebaseModelFromJson(json);
}
