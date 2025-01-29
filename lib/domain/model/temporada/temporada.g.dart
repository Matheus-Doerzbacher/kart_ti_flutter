// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temporada.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemporadaImpl _$$TemporadaImplFromJson(Map<String, dynamic> json) =>
    _$TemporadaImpl(
      id: json['id'] as String?,
      ano: (json['ano'] as num).toInt(),
      atual: json['atual'] as bool,
      nome: json['nome'] as String,
    );

Map<String, dynamic> _$$TemporadaImplToJson(_$TemporadaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ano': instance.ano,
      'atual': instance.atual,
      'nome': instance.nome,
    };
