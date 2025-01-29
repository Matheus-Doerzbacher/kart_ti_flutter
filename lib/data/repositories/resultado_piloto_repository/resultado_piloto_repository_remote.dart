import 'package:kart_ti_flutter/data/model/resultado_piloto/resultado_piloto_firebase_model.dart';
import 'package:kart_ti_flutter/data/repositories/resultado_piloto_repository/resultado_piloto_repository.dart';
import 'package:kart_ti_flutter/data/services/corrida_service.dart';
import 'package:kart_ti_flutter/data/services/piloto_service.dart';
import 'package:kart_ti_flutter/data/services/pista_service.dart';
import 'package:kart_ti_flutter/data/services/resultado_piloto_service.dart';
import 'package:kart_ti_flutter/data/services/temporada_service.dart';
import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';
import 'package:kart_ti_flutter/domain/model/resultado_piloto/resultado_piloto.dart';
import 'package:result_dart/result_dart.dart';

class ResultadoPilotoRepositoryRemote extends ResultadoPilotoRepository {
  final ResultadoPilotoService _resultadoPilotoService;
  final CorridaService _corridaService;
  final PilotoService _pilotoService;
  final TemporadaService _temporadaService;
  final PistaService _pistaService;

  ResultadoPilotoRepositoryRemote({
    required ResultadoPilotoService resultadoPilotoService,
    required CorridaService corridaService,
    required PilotoService pilotoService,
    required TemporadaService temporadaService,
    required PistaService pistaService,
  })  : _resultadoPilotoService = resultadoPilotoService,
        _corridaService = corridaService,
        _pilotoService = pilotoService,
        _temporadaService = temporadaService,
        _pistaService = pistaService;

  @override
  AsyncResult<Unit> createResultadoPiloto(
      ResultadoPiloto resultadoPiloto) async {
    try {
      final resultadoPilotoFirebase = ResultadoPilotoFirebaseModel(
        idCorrida: resultadoPiloto.corrida.id!,
        idPiloto: resultadoPiloto.piloto.id!,
        melhorVolta: resultadoPiloto.melhorVolta,
        numeroDaMelhorVolta: resultadoPiloto.numeroDaMelhorVolta,
        numeroKart: resultadoPiloto.numeroKart,
        pontos: resultadoPiloto.pontos,
        posicao: resultadoPiloto.posicao,
        posicaoQualificacao: resultadoPiloto.posicaoQualificacao,
        tempoDoPilotoDaFrente: resultadoPiloto.tempoDoPilotoDaFrente,
        tempoDoPilotoLider: resultadoPiloto.tempoDoPilotoLider,
        tempoQualificacao: resultadoPiloto.tempoQualificacao,
        totalDeVoltas: resultadoPiloto.totalDeVoltas,
        velocidadeMedia: resultadoPiloto.velocidadeMedia,
      );

      return _resultadoPilotoService
          .createResultadoPiloto(resultadoPilotoFirebase);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> deleteResultadoPiloto(String id) async {
    try {
      return _resultadoPilotoService.deleteResultadoPiloto(id);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<List<ResultadoPiloto>> getResultadoPilotosByCorrida(
      String idCorrida) async {
    try {
      final resultadoPilotoFirebase = await _resultadoPilotoService
          .getResultadoPilotosByCorrida(idCorrida)
          .getOrThrow();

      final resultados = await Future.wait(resultadoPilotoFirebase
          .map((resultadoPilotoFirebase) =>
              _getResultadoPiloto(resultadoPilotoFirebase))
          .toList());

      return Success(resultados);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Future<ResultadoPiloto> _getResultadoPiloto(
    ResultadoPilotoFirebaseModel resultadoPilotoFirebase,
  ) async {
    final corridaFirebase = await _corridaService
        .getCorridaById(resultadoPilotoFirebase.idCorrida)
        .getOrThrow();

    final corridaPiloto = await _pilotoService
        .getPilotoById(resultadoPilotoFirebase.idPiloto)
        .getOrThrow();

    final corridaPista =
        await _pistaService.getPistaById(corridaFirebase.idPista).getOrThrow();

    final temporada = await _temporadaService
        .getTemporadaById(corridaFirebase.idTemporada)
        .getOrThrow();

    final corrida = Corrida(
        piloto: corridaPiloto,
        pista: corridaPista,
        temporada: temporada,
        tempo: corridaFirebase.tempo,
        voltas: corridaFirebase.voltas,
        data: corridaFirebase.data);

    final piloto = await _pilotoService
        .getPilotoById(resultadoPilotoFirebase.idPiloto)
        .getOrThrow();

    return ResultadoPiloto(
      id: resultadoPilotoFirebase.id,
      corrida: corrida,
      piloto: piloto,
      isMelhorVoltaCorrida: resultadoPilotoFirebase.isMelhorVoltaCorrida,
      melhorVolta: resultadoPilotoFirebase.melhorVolta,
      numeroDaMelhorVolta: resultadoPilotoFirebase.numeroDaMelhorVolta,
      numeroKart: resultadoPilotoFirebase.numeroKart,
      pontos: resultadoPilotoFirebase.pontos,
      posicao: resultadoPilotoFirebase.posicao,
      posicaoQualificacao: resultadoPilotoFirebase.posicaoQualificacao,
      tempoDoPilotoDaFrente: resultadoPilotoFirebase.tempoDoPilotoDaFrente,
      tempoDoPilotoLider: resultadoPilotoFirebase.tempoDoPilotoLider,
      tempoQualificacao: resultadoPilotoFirebase.tempoQualificacao,
      totalDeVoltas: resultadoPilotoFirebase.totalDeVoltas,
      velocidadeMedia: resultadoPilotoFirebase.velocidadeMedia,
    );
  }

  @override
  AsyncResult<Unit> updateResultadoPiloto(
      ResultadoPiloto resultadoPiloto) async {
    try {
      final resultadoPilotoFirebase = ResultadoPilotoFirebaseModel(
        id: resultadoPiloto.id,
        idCorrida: resultadoPiloto.corrida.id!,
        idPiloto: resultadoPiloto.piloto.id!,
        melhorVolta: resultadoPiloto.melhorVolta,
        numeroDaMelhorVolta: resultadoPiloto.numeroDaMelhorVolta,
        numeroKart: resultadoPiloto.numeroKart,
        pontos: resultadoPiloto.pontos,
        posicao: resultadoPiloto.posicao,
        posicaoQualificacao: resultadoPiloto.posicaoQualificacao,
        tempoDoPilotoDaFrente: resultadoPiloto.tempoDoPilotoDaFrente,
        tempoDoPilotoLider: resultadoPiloto.tempoDoPilotoLider,
        tempoQualificacao: resultadoPiloto.tempoQualificacao,
        totalDeVoltas: resultadoPiloto.totalDeVoltas,
        velocidadeMedia: resultadoPiloto.velocidadeMedia,
      );

      return _resultadoPilotoService.updateResultadoPiloto(
        resultadoPilotoFirebase,
      );
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
