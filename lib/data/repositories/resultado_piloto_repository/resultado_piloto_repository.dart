import 'package:kart_ti_flutter/domain/model/resultado_piloto/resultado_piloto.dart';
import 'package:result_dart/result_dart.dart';

abstract class ResultadoPilotoRepository {
  AsyncResult<Unit> createResultadoPiloto(ResultadoPiloto resultadoPiloto);

  AsyncResult<Unit> updateResultadoPiloto(ResultadoPiloto resultadoPiloto);

  AsyncResult<Unit> deleteResultadoPiloto(String id);

  AsyncResult<List<ResultadoPiloto>> getResultadoPilotosByCorrida(
    String idCorrida,
  );
}
