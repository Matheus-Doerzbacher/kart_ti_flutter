import 'package:freezed_annotation/freezed_annotation.dart';

part 'corrida_firebase_model.freezed.dart';
part 'corrida_firebase_model.g.dart';

@freezed
class CorridaFirebaseModel with _$CorridaFirebaseModel {
  const factory CorridaFirebaseModel({
    String? id,
    String? idPiloto,
    required String idPista,
    required String idTemporada,
    String? tempo,
    int? voltas,
    required DateTime data,
  }) = _CorridaFirebaseModel;

  factory CorridaFirebaseModel.fromJson(Map<String, dynamic> json) =>
      _$CorridaFirebaseModelFromJson(json);
}
