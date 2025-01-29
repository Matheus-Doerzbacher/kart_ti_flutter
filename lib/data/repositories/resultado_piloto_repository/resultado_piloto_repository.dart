import 'package:kart_ti_flutter/domain/model/resultado_piloto/resultado_piloto.dart';
import 'package:kart_ti_flutter/utils/result.dart';

abstract class ResultadoPilotoRepository {
  Future<Result<void>> createResultadoPiloto(ResultadoPiloto resultadoPiloto);

  Future<Result<void>> updateResultadoPiloto(ResultadoPiloto resultadoPiloto);

  Future<Result<void>> deleteResultadoPiloto(String id);

  Future<Result<List<ResultadoPiloto>>> getResultadoPilotosByCorrida(
    String idCorrida,
  );
}
