// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corrida_firebase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CorridaFirebaseModelImpl _$$CorridaFirebaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CorridaFirebaseModelImpl(
      id: json['id'] as String?,
      idPiloto: json['idPiloto'] as String,
      idPista: json['idPista'] as String,
      idTemporada: json['idTemporada'] as String,
      tempo: json['tempo'] as String,
      voltas: (json['voltas'] as num).toInt(),
      data: DateTime.parse(json['data'] as String),
    );

Map<String, dynamic> _$$CorridaFirebaseModelImplToJson(
        _$CorridaFirebaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idPiloto': instance.idPiloto,
      'idPista': instance.idPista,
      'idTemporada': instance.idTemporada,
      'tempo': instance.tempo,
      'voltas': instance.voltas,
      'data': instance.data.toIso8601String(),
    };
