import 'package:kart_ti_flutter/data/repositories/piloto_repository/piloto_repository.dart';
import 'package:kart_ti_flutter/data/services/piloto_service.dart';
import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';
import 'package:result_dart/result_dart.dart';

class PilotoRepositoryRemote extends PilotoRepository {
  final PilotoService _pilotoService;

  PilotoRepositoryRemote({
    required PilotoService pilotoService,
  }) : _pilotoService = pilotoService;

  @override
  AsyncResult<Unit> createPiloto(Piloto piloto) async {
    try {
      return _pilotoService.createPiloto(piloto);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> deletePiloto(String id) async {
    try {
      return _pilotoService.deletePiloto(id);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<List<Piloto>> getPilotos() async {
    try {
      return _pilotoService.getPilotos();
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> updatePiloto(Piloto piloto) async {
    try {
      return _pilotoService.updatePiloto(piloto);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
