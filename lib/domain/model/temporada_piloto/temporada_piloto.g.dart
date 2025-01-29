// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temporada_piloto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemporadaPilotoImpl _$$TemporadaPilotoImplFromJson(
        Map<String, dynamic> json) =>
    _$TemporadaPilotoImpl(
      id: json['id'] as String?,
      idPiloto: json['idPiloto'] as String,
      idTemporada: json['idTemporada'] as String,
      pontos: (json['pontos'] as num).toInt(),
      vitorias: (json['vitorias'] as num).toInt(),
    );

Map<String, dynamic> _$$TemporadaPilotoImplToJson(
        _$TemporadaPilotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idPiloto': instance.idPiloto,
      'idTemporada': instance.idTemporada,
      'pontos': instance.pontos,
      'vitorias': instance.vitorias,
    };
