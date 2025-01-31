import 'package:kart_ti_flutter/data/repositories/corrida_repository/corrida_repository.dart';
import 'package:kart_ti_flutter/data/repositories/resultado_piloto_repository/resultado_piloto_repository.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_repository/temporada_repository.dart';
import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';
import 'package:logging/logging.dart';
import 'package:result_dart/result_dart.dart';

class CorridasGetHomeUseCase {
  final CorridaRepository _corridaRepository;
  final ResultadoPilotoRepository _resultadoPilotoRepository;
  final TemporadaRepository _temporadaRepository;

  CorridasGetHomeUseCase({
    required CorridaRepository corridaRepository,
    required ResultadoPilotoRepository resultadoPilotoRepository,
    required TemporadaRepository temporadaRepository,
  })  : _corridaRepository = corridaRepository,
        _resultadoPilotoRepository = resultadoPilotoRepository,
        _temporadaRepository = temporadaRepository;

  final _log = Logger('CorridasGetHomeUseCase');

  AsyncResult<List<Corrida>> getCorridasTemporadaAtualComResultados() async {
    try {
      final temporadaAtual =
          await _temporadaRepository.getTemporadaAtual().getOrThrow();

      final corridas = await _corridaRepository
          .getCorridasByTemporada(temporadaAtual.id!)
          .getOrThrow();

      corridas.sort((a, b) => b.data.compareTo(a.data));

      final ultimas3Corridas = corridas.take(3).toList();

      final corridasComResultados = await Future.wait(
        ultimas3Corridas.map(
          (corrida) async {
            final resultados = await _resultadoPilotoRepository
                .getResultadoPilotosByCorrida(corrida.id!)
                .getOrThrow();

            resultados.sort((a, b) => a.posicao.compareTo(b.posicao));

            return corrida.copyWith(resultados: resultados);
          },
        ),
      );

      return Success(corridasComResultados);
    } on Exception catch (e) {
      _log.severe('Erro ao buscar corridas', e);
      return Failure(e);
    }
  }
}
