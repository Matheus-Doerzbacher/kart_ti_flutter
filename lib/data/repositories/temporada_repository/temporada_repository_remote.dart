import 'package:kart_ti_flutter/data/repositories/temporada_repository/temporada_repository.dart';
import 'package:kart_ti_flutter/data/services/temporada_service.dart';
import 'package:kart_ti_flutter/domain/model/temporada/temporada.dart';
import 'package:logging/logging.dart';
import 'package:result_dart/result_dart.dart';

class TemporadaRepositoryRemote extends TemporadaRepository {
  final TemporadaService _temporadaService;

  TemporadaRepositoryRemote({
    required TemporadaService temporadaService,
  }) : _temporadaService = temporadaService;

  final _log = Logger('TemporadaRepositoryRemote');

  @override
  AsyncResult<Unit> createTemporada(Temporada temporada) async {
    try {
      return _temporadaService.createTemporada(temporada);
    } on Exception catch (e) {
      _log.severe('Erro ao criar temporada', e);
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> deleteTemporada(String id) async {
    try {
      return _temporadaService.deleteTemporada(id);
    } on Exception catch (e) {
      _log.severe('Erro ao deletar temporada', e);
      return Failure(e);
    }
  }

  @override
  AsyncResult<Temporada> getTemporadaAtual() async {
    try {
      return _temporadaService.getTemporadaAtual();
    } on Exception catch (e) {
      _log.severe('Erro ao buscar temporada atual', e);
      return Failure(e);
    }
  }

  @override
  AsyncResult<List<Temporada>> getTemporadas() async {
    try {
      return _temporadaService.getTemporadas();
    } on Exception catch (e) {
      _log.severe('Erro ao buscar temporadas', e);
      return Failure(e);
    }
  }

  @override
  AsyncResult<Unit> updateTemporada(Temporada temporada) async {
    try {
      return _temporadaService.updateTemporada(temporada);
    } on Exception catch (e) {
      _log.severe('Erro ao atualizar temporada', e);
      return Failure(e);
    }
  }
}
