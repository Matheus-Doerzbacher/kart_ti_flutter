// ignore_for_file: unused_field

import 'package:flutter/foundation.dart';
import 'package:kart_ti_flutter/data/repositories/corrida_repository/corrida_repository.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_piloto_respository/temporada_piloto_respository.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_repository/temporada_repository.dart';
import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';
import 'package:kart_ti_flutter/domain/model/temporada_piloto/temporada_piloto.dart';
import 'package:kart_ti_flutter/domain/use_cases/corridas_get_home_use_case.dart';
import 'package:kart_ti_flutter/utils/command.dart';
import 'package:result_dart/result_dart.dart';

class HomeViewModel extends ChangeNotifier {
  final TemporadaRepository _temporadaRepository;
  final CorridaRepository _corridaRepository;
  final TemporadaPilotoRepository _temporadaPilotoRepository;
  final CorridasGetHomeUseCase _corridasGetHomeUseCase;

  HomeViewModel({
    required CorridaRepository corridaRepository,
    required TemporadaRepository temporadaRepository,
    required TemporadaPilotoRepository temporadaPilotoRepository,
    required CorridasGetHomeUseCase corridasGetHomeUseCase,
  })  : _corridaRepository = corridaRepository,
        _temporadaRepository = temporadaRepository,
        _temporadaPilotoRepository = temporadaPilotoRepository,
        _corridasGetHomeUseCase = corridasGetHomeUseCase {
    loadCorridas = Command0(_loadCorridas)..execute();
  }

  late Command0 loadCorridas;

  List<TemporadaPiloto> _temporadaPilotosPontos = [];
  List<TemporadaPiloto> get temporadaPilotosPontos => _temporadaPilotosPontos;

  List<TemporadaPiloto> _temporadaPilotosVitorias = [];
  List<TemporadaPiloto> get temporadaPilotosVitorias =>
      _temporadaPilotosVitorias;

  List<Corrida> _corridas = [];
  List<Corrida> get corridas => _corridas;

  AsyncResult<Unit> _loadCorridas() async {
    try {
      final temporadaAtual =
          await _temporadaRepository.getTemporadaAtual().getOrThrow();

      final corridas =
          await _corridasGetHomeUseCase.getCorridasComResultados().getOrThrow();

      _corridas = corridas;

      final temporadaPilotos = await _temporadaPilotoRepository
          .getTemporadaPilotosByTemporada(temporadaAtual.id!)
          .getOrThrow();

      temporadaPilotos.sort((a, b) => b.pontos.compareTo(a.pontos));
      _temporadaPilotosPontos = temporadaPilotos;

      temporadaPilotos.sort((a, b) => b.vitorias.compareTo(a.vitorias));
      _temporadaPilotosVitorias = temporadaPilotos;
      return Success(unit);
    } finally {
      notifyListeners();
    }
  }
}
