import 'package:kart_ti_flutter/domain/corrida/corrida.dart';
import 'package:kart_ti_flutter/utils/result.dart';

abstract class CorridaService {
  Future<Result<void>> createCorrida(Corrida corrida);

  Future<Result<void>> updateCorrida(Corrida corrida);

  Future<Result<void>> deleteCorrida(String id);

  Future<Result<List<Corrida>>> getCorridasByTemporada(String idTemporada);

  Future<Result<List<Corrida>>> getCorridasByPiloto(String idPiloto);
}
