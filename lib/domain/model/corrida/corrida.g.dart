// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corrida.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CorridaImpl _$$CorridaImplFromJson(Map<String, dynamic> json) =>
    _$CorridaImpl(
      id: json['id'] as String?,
      idPiloto: json['idPiloto'] as String,
      idPista: json['idPista'] as String,
      idTemporada: json['idTemporada'] as String,
      tempo: json['tempo'] as String,
      voltas: (json['voltas'] as num).toInt(),
      data: DateTime.parse(json['data'] as String),
    );

Map<String, dynamic> _$$CorridaImplToJson(_$CorridaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idPiloto': instance.idPiloto,
      'idPista': instance.idPista,
      'idTemporada': instance.idTemporada,
      'tempo': instance.tempo,
      'voltas': instance.voltas,
      'data': instance.data.toIso8601String(),
    };
