import 'package:kart_ti_flutter/domain/model/pista/pista.dart';
import 'package:result_dart/result_dart.dart';

abstract class PistaRepository {
  AsyncResult<Unit> createPista(Pista pista);

  AsyncResult<Unit> updatePista(Pista pista);

  AsyncResult<Unit> deletePista(String id);

  AsyncResult<List<Pista>> getPistas();
}
