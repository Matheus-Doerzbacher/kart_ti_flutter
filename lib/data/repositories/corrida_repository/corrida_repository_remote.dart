import 'package:kart_ti_flutter/data/model/corrida/corrida_firebase_model.dart';
import 'package:kart_ti_flutter/data/repositories/corrida_repository/corrida_repository.dart';
import 'package:kart_ti_flutter/data/services/corrida_service.dart';
import 'package:kart_ti_flutter/data/services/piloto_service.dart';
import 'package:kart_ti_flutter/data/services/pista_service.dart';
import 'package:kart_ti_flutter/data/services/temporada_service.dart';
import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';
import 'package:result_dart/result_dart.dart';

class CorridaRepositoryRemote extends CorridaRepository {
  final CorridaService _corridaService;
  final PilotoService _pilotoService;
  final TemporadaService _temporadaService;
  final PistaService _pistaService;

  CorridaRepositoryRemote({
    required CorridaService corridaService,
    required PilotoService pilotoService,
    required TemporadaService temporadaService,
    required PistaService pistaService,
  })  : _corridaService = corridaService,
        _pilotoService = pilotoService,
        _temporadaService = temporadaService,
        _pistaService = pistaService;
  @override
  AsyncResult<Unit> createCorrida(Corrida corrida) async {
    try {
      final corridaFirebase = CorridaFirebaseModel(
          idPiloto: corrida.piloto.id!,
          idPista: corrida.pista.id!,
          idTemporada: corrida.temporada.id!,
          tempo: corrida.tempo,
          voltas: corrida.voltas,
          data: corrida.data);

      return _corridaService.createCorrida(corridaFirebase);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> deleteCorrida(String id) async {
    try {
      return _corridaService.deleteCorrida(id);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<List<Corrida>> getCorridasByPiloto(String idPiloto) async {
    try {
      final corridasFirebase = await _corridaService //
          .getCorridasByPiloto(idPiloto)
          .getOrThrow();

      final corridas = await Future.wait(
        corridasFirebase
            .map((corridaFirebase) => _getCorrida(corridaFirebase))
            .toList(),
      );

      return Success(corridas);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<List<Corrida>> getCorridasByTemporada(String idTemporada) async {
    try {
      final corridasFirebase = await _corridaService //
          .getCorridasByTemporada(idTemporada)
          .getOrThrow();

      final corridas = await Future.wait(
        corridasFirebase
            .map((corridaFirebase) => _getCorrida(corridaFirebase))
            .toList(),
      );

      return Success(corridas);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> updateCorrida(Corrida corrida) async {
    try {
      final corridaFirebase = CorridaFirebaseModel(
        idPiloto: corrida.piloto.id!,
        idPista: corrida.pista.id!,
        idTemporada: corrida.temporada.id!,
        tempo: corrida.tempo,
        voltas: corrida.voltas,
        data: corrida.data,
      );
      return _corridaService.updateCorrida(corridaFirebase);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Future<Corrida> _getCorrida(CorridaFirebaseModel corridaFirebase) async {
    final piloto = await _pilotoService //
        .getPilotoById(corridaFirebase.idPiloto)
        .getOrThrow();
    final pista = await _pistaService //
        .getPistaById(corridaFirebase.idPista)
        .getOrThrow();
    final temporada = await _temporadaService //
        .getTemporadaById(corridaFirebase.idTemporada)
        .getOrThrow();

    return Corrida(
      id: corridaFirebase.id,
      piloto: piloto,
      pista: pista,
      temporada: temporada,
      tempo: corridaFirebase.tempo,
      voltas: corridaFirebase.voltas,
      data: corridaFirebase.data,
    );
  }
}
