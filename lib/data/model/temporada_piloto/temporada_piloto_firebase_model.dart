import 'package:freezed_annotation/freezed_annotation.dart';

part 'temporada_piloto_firebase_model.freezed.dart';
part 'temporada_piloto_firebase_model.g.dart';

@freezed
class TemporadaPilotoFirebaseModel with _$TemporadaPilotoFirebaseModel {
  const factory TemporadaPilotoFirebaseModel({
    String? id,
    required String idPiloto,
    required String idTemporada,
    required int pontos,
    required int vitorias,
  }) = _TemporadaPilotoFirebaseModel;

  factory TemporadaPilotoFirebaseModel.fromJson(Map<String, dynamic> json) =>
      _$TemporadaPilotoFirebaseModelFromJson(json);
}
