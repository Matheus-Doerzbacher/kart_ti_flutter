import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';
import 'package:result_dart/result_dart.dart';

abstract class PilotoRepository {
  AsyncResult<Unit> createPiloto(Piloto piloto);

  AsyncResult<Unit> updatePiloto(Piloto piloto);

  AsyncResult<Unit> deletePiloto(String id);

  AsyncResult<List<Piloto>> getPilotos();
}
