import 'package:kart_ti_flutter/domain/model/temporada_piloto/temporada_piloto.dart';
import 'package:result_dart/result_dart.dart';

abstract class TemporadaPilotoRepository {
  AsyncResult<Unit> createTemporadaPiloto(TemporadaPiloto temporadaPiloto);

  AsyncResult<Unit> updateTemporadaPiloto(TemporadaPiloto temporadaPiloto);

  AsyncResult<Unit> deleteTemporadaPiloto(String id);

  AsyncResult<List<TemporadaPiloto>> getTemporadaPilotosByTemporada(
    String idTemporada,
  );
}
