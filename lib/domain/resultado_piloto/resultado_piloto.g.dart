// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resultado_piloto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultadoPilotoImpl _$$ResultadoPilotoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultadoPilotoImpl(
      id: json['id'] as String?,
      idCorrida: json['idCorrida'] as String,
      idPiloto: json['idPiloto'] as String,
      isMelhorVoltaCorrida: json['isMelhorVoltaCorrida'] as bool? ?? false,
      melhorVolta: json['melhorVolta'] as String,
      numeroDaMelhorVolta: (json['numeroDaMelhorVolta'] as num).toInt(),
      numeroKart: (json['numeroKart'] as num).toInt(),
      pontos: (json['pontos'] as num).toInt(),
      posicao: (json['posicao'] as num).toInt(),
      posicaoQualificacao: (json['posicaoQualificacao'] as num).toInt(),
      tempoDoPilotoDaFrente: json['tempoDoPilotoDaFrente'] as String,
      tempoDoPilotoLider: json['tempoDoPilotoLider'] as String,
      tempoQualificacao: json['tempoQualificacao'] as String,
      totalDeVoltas: (json['totalDeVoltas'] as num).toInt(),
      velocidadeMedia: json['velocidadeMedia'] as String,
    );

Map<String, dynamic> _$$ResultadoPilotoImplToJson(
        _$ResultadoPilotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idCorrida': instance.idCorrida,
      'idPiloto': instance.idPiloto,
      'isMelhorVoltaCorrida': instance.isMelhorVoltaCorrida,
      'melhorVolta': instance.melhorVolta,
      'numeroDaMelhorVolta': instance.numeroDaMelhorVolta,
      'numeroKart': instance.numeroKart,
      'pontos': instance.pontos,
      'posicao': instance.posicao,
      'posicaoQualificacao': instance.posicaoQualificacao,
      'tempoDoPilotoDaFrente': instance.tempoDoPilotoDaFrente,
      'tempoDoPilotoLider': instance.tempoDoPilotoLider,
      'tempoQualificacao': instance.tempoQualificacao,
      'totalDeVoltas': instance.totalDeVoltas,
      'velocidadeMedia': instance.velocidadeMedia,
    };
