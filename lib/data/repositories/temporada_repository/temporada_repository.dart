import 'package:kart_ti_flutter/domain/model/temporada/temporada.dart';
import 'package:result_dart/result_dart.dart';

abstract class TemporadaRepository {
  AsyncResult<Unit> createTemporada(Temporada temporada);

  AsyncResult<Unit> updateTemporada(Temporada temporada);

  AsyncResult<Unit> deleteTemporada(String id);

  AsyncResult<List<Temporada>> getTemporadas();

  AsyncResult<Temporada> getTemporadaAtual();
}
