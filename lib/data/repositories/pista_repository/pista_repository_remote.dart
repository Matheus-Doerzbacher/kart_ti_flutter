import 'package:kart_ti_flutter/data/repositories/pista_repository/pista_repository.dart';
import 'package:kart_ti_flutter/data/services/pista_service.dart';
import 'package:kart_ti_flutter/domain/model/pista/pista.dart';
import 'package:logging/logging.dart';
import 'package:result_dart/result_dart.dart';

class PistaRepositoryRemote extends PistaRepository {
  final PistaService _pistaService;

  PistaRepositoryRemote({
    required PistaService pistaService,
  }) : _pistaService = pistaService;

  final _log = Logger('PistaRepositoryRemote');

  @override
  AsyncResult<Unit> createPista(Pista pista) async {
    try {
      return _pistaService.createPista(pista);
    } on Exception catch (e) {
      _log.severe('Erro ao criar pista', e);
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> deletePista(String id) async {
    try {
      return _pistaService.deletePista(id);
    } on Exception catch (e) {
      _log.severe('Erro ao deletar pista', e);
      return Failure(e);
    }
  }

  @override
  AsyncResult<List<Pista>> getPistas() async {
    try {
      return _pistaService.getPistas();
    } on Exception catch (e) {
      _log.severe('Erro ao buscar pistas', e);
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> updatePista(Pista pista) async {
    try {
      return _pistaService.updatePista(pista);
    } on Exception catch (e) {
      _log.severe('Erro ao atualizar pista', e);
      return Failure(e);
    }
  }
}
