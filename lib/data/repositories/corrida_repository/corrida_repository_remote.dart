import 'package:kart_ti_flutter/data/model/corrida/corrida_firebase_model.dart';
import 'package:kart_ti_flutter/data/repositories/corrida_repository/corrida_repository.dart';
import 'package:kart_ti_flutter/data/services/corrida_service.dart';
import 'package:kart_ti_flutter/data/services/piloto_service.dart';
import 'package:kart_ti_flutter/data/services/pista_service.dart';
import 'package:kart_ti_flutter/data/services/temporada_service.dart';
import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';
import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';
import 'package:kart_ti_flutter/domain/model/pista/pista.dart';
import 'package:kart_ti_flutter/domain/model/temporada/temporada.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class CorridaRepositoryRemote extends CorridaRepository {
  final CorridaService _corridaService;
  final PilotoService _pilotoService;
  final PistaService _pistaService;
  final TemporadaService _temporadaService;

  CorridaRepositoryRemote({
    required CorridaService corridaService,
    required PilotoService pilotoService,
    required PistaService pistaService,
    required TemporadaService temporadaService,
  })  : _corridaService = corridaService,
        _pilotoService = pilotoService,
        _pistaService = pistaService,
        _temporadaService = temporadaService;

  @override
  Future<Result<void>> createCorrida(Corrida corrida) async {
    try {
      final corridaFirebaseModel = CorridaFirebaseModel(
        idPiloto: corrida.piloto.id!,
        idPista: corrida.pista.id!,
        idTemporada: corrida.temporada.id!,
        tempo: corrida.tempo,
        voltas: corrida.voltas,
        data: corrida.data,
      );

      return _corridaService.createCorrida(corridaFirebaseModel);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> deleteCorrida(String id) async {
    try {
      return _corridaService.deleteCorrida(id);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<Corrida>>> getCorridasByPiloto(String idPiloto) async {
    try {
      final result = await _corridaService.getCorridasByPiloto(idPiloto);

      switch (result) {
        case Ok<List<CorridaFirebaseModel>>():
          final corridasFirebase = result.value;

          final corridas = await Future.wait(
            corridasFirebase.map((c) => _getCorrida(c)).toList(),
          );

          return Result.ok(corridas);

        case Error<List<CorridaFirebaseModel>>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Corrida> _getCorrida(CorridaFirebaseModel corridaFirebaseModel) async {
    final resultPiloto =
        await _pilotoService.getPiloto(corridaFirebaseModel.idPiloto);

    switch (resultPiloto) {
      case Error<Piloto>():
        throw Exception(resultPiloto.error);
      case Ok<Piloto>():
    }

    final resultPista =
        await _pistaService.getPista(corridaFirebaseModel.idPista);

    switch (resultPista) {
      case Error<Pista>():
        throw Exception(resultPista.error);
      case Ok<Pista>():
    }

    final resultTemporada =
        await _temporadaService.getTemporada(corridaFirebaseModel.idTemporada);

    switch (resultTemporada) {
      case Error<Temporada>():
        throw Exception(resultTemporada.error);
      case Ok<Temporada>():
    }

    final piloto = resultPiloto.value;
    final pista = resultPista.value;
    final temporada = resultTemporada.value;

    return Corrida(
      piloto: piloto,
      pista: pista,
      temporada: temporada,
      tempo: corridaFirebaseModel.tempo,
      voltas: corridaFirebaseModel.voltas,
      data: corridaFirebaseModel.data,
    );
  }

  @override
  Future<Result<List<Corrida>>> getCorridasByTemporada(
    String idTemporada,
  ) async {
    try {
      final result = await _corridaService.getCorridasByTemporada(idTemporada);

      switch (result) {
        case Ok<List<CorridaFirebaseModel>>():
          final corridasFirebase = result.value;

          final corridas = await Future.wait(
            corridasFirebase.map((c) => _getCorrida(c)).toList(),
          );

          return Result.ok(corridas);

        case Error<List<CorridaFirebaseModel>>():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> updateCorrida(Corrida corrida) async {
    try {
      final corridaFirebaseModel = CorridaFirebaseModel(
        id: corrida.id,
        idPiloto: corrida.piloto.id!,
        idPista: corrida.pista.id!,
        idTemporada: corrida.temporada.id!,
        tempo: corrida.tempo,
        voltas: corrida.voltas,
        data: corrida.data,
      );
      return _corridaService.updateCorrida(corridaFirebaseModel);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
