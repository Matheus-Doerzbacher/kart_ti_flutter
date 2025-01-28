import 'package:kart_ti_flutter/domain/temporada_piloto/temporada_piloto.dart';
import 'package:kart_ti_flutter/utils/result.dart';

abstract class TemporadaPilotoRepository {
  Future<Result<void>> createTemporadaPiloto(TemporadaPiloto temporadaPiloto);

  Future<Result<void>> updateTemporadaPiloto(TemporadaPiloto temporadaPiloto);

  Future<Result<void>> deleteTemporadaPiloto(String id);

  Future<Result<List<TemporadaPiloto>>> getTemporadaPilotosByTemporada(
    String idTemporada,
  );
}
