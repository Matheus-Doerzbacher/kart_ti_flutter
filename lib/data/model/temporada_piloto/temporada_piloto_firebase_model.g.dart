// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temporada_piloto_firebase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemporadaPilotoFirebaseModelImpl _$$TemporadaPilotoFirebaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TemporadaPilotoFirebaseModelImpl(
      id: json['id'] as String?,
      idPiloto: json['idPiloto'] as String,
      idTemporada: json['idTemporada'] as String,
      pontos: (json['pontos'] as num).toInt(),
      vitorias: (json['vitorias'] as num).toInt(),
    );

Map<String, dynamic> _$$TemporadaPilotoFirebaseModelImplToJson(
        _$TemporadaPilotoFirebaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idPiloto': instance.idPiloto,
      'idTemporada': instance.idTemporada,
      'pontos': instance.pontos,
      'vitorias': instance.vitorias,
    };
