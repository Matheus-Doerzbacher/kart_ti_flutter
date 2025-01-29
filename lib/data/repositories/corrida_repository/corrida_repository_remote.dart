import 'package:kart_ti_flutter/data/repositories/corrida_repository/corrida_repository.dart';
import 'package:kart_ti_flutter/data/services/corrida_service.dart';
import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class CorridaRepositoryRemote extends CorridaRepository {
  final CorridaService _corridaService;

  CorridaRepositoryRemote({
    required CorridaService corridaService,
  }) : _corridaService = corridaService;

  @override
  Future<Result<void>> createCorrida(Corrida corrida) async {
    try {
      return _corridaService.createCorrida(corrida);
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
      return _corridaService.getCorridasByPiloto(idPiloto);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<Corrida>>> getCorridasByTemporada(
    String idTemporada,
  ) async {
    try {
      return _corridaService.getCorridasByTemporada(idTemporada);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> updateCorrida(Corrida corrida) async {
    try {
      return _corridaService.updateCorrida(corrida);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
