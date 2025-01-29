import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';
import 'package:result_dart/result_dart.dart';

abstract class CorridaRepository {
  AsyncResult<Unit> createCorrida(Corrida corrida);

  AsyncResult<Unit> updateCorrida(Corrida corrida);

  AsyncResult<Unit> deleteCorrida(String id);

  AsyncResult<List<Corrida>> getCorridasByTemporada(String idTemporada);

  AsyncResult<List<Corrida>> getCorridasByPiloto(String idPiloto);
}
