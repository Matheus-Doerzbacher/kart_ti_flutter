// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temporada_piloto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemporadaPilotoImpl _$$TemporadaPilotoImplFromJson(
        Map<String, dynamic> json) =>
    _$TemporadaPilotoImpl(
      id: json['id'] as String?,
      piloto: Piloto.fromJson(json['piloto'] as Map<String, dynamic>),
      temporada: Temporada.fromJson(json['temporada'] as Map<String, dynamic>),
      pontos: (json['pontos'] as num).toInt(),
      vitorias: (json['vitorias'] as num).toInt(),
    );

Map<String, dynamic> _$$TemporadaPilotoImplToJson(
        _$TemporadaPilotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'piloto': instance.piloto,
      'temporada': instance.temporada,
      'pontos': instance.pontos,
      'vitorias': instance.vitorias,
    };
