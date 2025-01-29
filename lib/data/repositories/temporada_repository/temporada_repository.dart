import 'package:kart_ti_flutter/domain/model/temporada/temporada.dart';
import 'package:kart_ti_flutter/utils/result.dart';

abstract class TemporadaRepository {
  Future<Result<void>> createTemporada(Temporada temporada);

  Future<Result<void>> updateTemporada(Temporada temporada);

  Future<Result<void>> deleteTemporada(String id);

  Future<Result<List<Temporada>>> getTemporadas();

  Future<Result<Temporada>> getTemporadaAtual();
}
