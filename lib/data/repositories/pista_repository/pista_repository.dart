import 'package:kart_ti_flutter/domain/pista/pista.dart';
import 'package:kart_ti_flutter/utils/result.dart';

abstract class PistaRepository {
  Future<Result<void>> createPista(Pista pista);

  Future<Result<void>> updatePista(Pista pista);

  Future<Result<void>> deletePista(String id);

  Future<Result<List<Pista>>> getPistas();
}
