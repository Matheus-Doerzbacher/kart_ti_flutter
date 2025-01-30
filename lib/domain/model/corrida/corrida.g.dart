// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corrida.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CorridaImpl _$$CorridaImplFromJson(Map<String, dynamic> json) =>
    _$CorridaImpl(
      id: json['id'] as String?,
      pilotoGanhador: json['pilotoGanhador'] == null
          ? null
          : Piloto.fromJson(json['pilotoGanhador'] as Map<String, dynamic>),
      pista: Pista.fromJson(json['pista'] as Map<String, dynamic>),
      temporada: Temporada.fromJson(json['temporada'] as Map<String, dynamic>),
      tempo: json['tempo'] as String?,
      voltas: (json['voltas'] as num?)?.toInt(),
      data: DateTime.parse(json['data'] as String),
    );

Map<String, dynamic> _$$CorridaImplToJson(_$CorridaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pilotoGanhador': instance.pilotoGanhador,
      'pista': instance.pista,
      'temporada': instance.temporada,
      'tempo': instance.tempo,
      'voltas': instance.voltas,
      'data': instance.data.toIso8601String(),
    };
