import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';
import 'package:kart_ti_flutter/utils/result.dart';

abstract class PilotoRepository {
  Future<Result<void>> createPiloto(Piloto piloto);

  Future<Result<void>> updatePiloto(Piloto piloto);

  Future<Result<void>> deletePiloto(String id);

  Future<Result<List<Piloto>>> getPilotos();
}
