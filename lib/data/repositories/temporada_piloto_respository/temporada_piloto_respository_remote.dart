import 'package:kart_ti_flutter/data/model/temporada_piloto/temporada_piloto_firebase_model.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_piloto_respository/temporada_piloto_respository.dart';
import 'package:kart_ti_flutter/data/services/piloto_service.dart';
import 'package:kart_ti_flutter/data/services/temporada_piloto_service.dart';
import 'package:kart_ti_flutter/data/services/temporada_service.dart';
import 'package:kart_ti_flutter/domain/model/temporada_piloto/temporada_piloto.dart';
import 'package:result_dart/result_dart.dart';

class TemporadaPilotoRespositoryRemote extends TemporadaPilotoRepository {
  final TemporadaPilotoService _temporadaPilotoService;
  final TemporadaService _temporadaService;
  final PilotoService _pilotoService;

  TemporadaPilotoRespositoryRemote({
    required TemporadaPilotoService temporadaPilotoService,
    required TemporadaService temporadaService,
    required PilotoService pilotoService,
  })  : _temporadaPilotoService = temporadaPilotoService,
        _temporadaService = temporadaService,
        _pilotoService = pilotoService;

  @override
  AsyncResult<Unit> createTemporadaPiloto(
      TemporadaPiloto temporadaPiloto) async {
    try {
      final temporadaPilotoFirebase = TemporadaPilotoFirebaseModel(
          idPiloto: temporadaPiloto.piloto.id!,
          idTemporada: temporadaPiloto.temporada.id!,
          pontos: temporadaPiloto.pontos,
          vitorias: temporadaPiloto.vitorias);

      return _temporadaPilotoService
          .createTemporadaPiloto(temporadaPilotoFirebase);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> deleteTemporadaPiloto(String id) async {
    try {
      return _temporadaPilotoService.deleteTemporadaPiloto(id);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<List<TemporadaPiloto>> getTemporadaPilotosByTemporada(
      String idTemporada) async {
    try {
      final temporadasPilotosFirebase = await _temporadaPilotoService
          .getTemporadaPilotosByTemporada(idTemporada)
          .getOrThrow();

      final temporadaPilotos = await Future.wait(
        temporadasPilotosFirebase.map((e) => _getTemporadaPiloto(e)),
      );

      return Success(temporadaPilotos);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Future<TemporadaPiloto> _getTemporadaPiloto(
    TemporadaPilotoFirebaseModel temporadaPilotoFirebaseModel,
  ) async {
    try {
      final piloto = await _pilotoService
          .getPilotoById(temporadaPilotoFirebaseModel.idPiloto)
          .getOrThrow();
      final temporada = await _temporadaService
          .getTemporadaById(temporadaPilotoFirebaseModel.idTemporada)
          .getOrThrow();

      final temporadapiloto = TemporadaPiloto(
        piloto: piloto,
        temporada: temporada,
        pontos: temporadaPilotoFirebaseModel.pontos,
        vitorias: temporadaPilotoFirebaseModel.vitorias,
      );

      return temporadapiloto;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  AsyncResult<Unit> updateTemporadaPiloto(
      TemporadaPiloto temporadaPiloto) async {
    try {
      final temporadaPilotoFirebase = TemporadaPilotoFirebaseModel(
        idPiloto: temporadaPiloto.piloto.id!,
        idTemporada: temporadaPiloto.temporada.id!,
        pontos: temporadaPiloto.pontos,
        vitorias: temporadaPiloto.vitorias,
      );

      return _temporadaPilotoService
          .updateTemporadaPiloto(temporadaPilotoFirebase);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
