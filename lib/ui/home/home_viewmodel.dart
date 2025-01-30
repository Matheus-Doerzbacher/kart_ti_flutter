// ignore_for_file: unused_field

import 'package:flutter/foundation.dart';
import 'package:kart_ti_flutter/data/repositories/corrida_repository/corrida_repository.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_piloto_respository/temporada_piloto_respository.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_repository/temporada_repository.dart';
import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';
import 'package:kart_ti_flutter/domain/model/temporada_piloto/temporada_piloto.dart';
import 'package:kart_ti_flutter/utils/command.dart';
import 'package:result_dart/result_dart.dart';

class HomeViewModel extends ChangeNotifier {
  final TemporadaRepository _temporadaRepository;
  final CorridaRepository _corridaRepository;
  final TemporadaPilotoRepository _temporadaPilotoRepository;

  HomeViewModel({
    required CorridaRepository corridaRepository,
    required TemporadaRepository temporadaRepository,
    required TemporadaPilotoRepository temporadaPilotoRepository,
  })  : _corridaRepository = corridaRepository,
        _temporadaRepository = temporadaRepository,
        _temporadaPilotoRepository = temporadaPilotoRepository {
    load = Command0(_load)..execute();
  }

  late Command0 load;

  List<TemporadaPiloto> _temporadaPilotos = [];
  List<TemporadaPiloto> get temporadaPilotos => _temporadaPilotos;

  List<Corrida> _corridas = [];
  List<Corrida> get corridas => _corridas;

  AsyncResult<Unit> _load() async {
    try {
      final temporadaAtual =
          await _temporadaRepository.getTemporadaAtual().getOrThrow();

      final corridas = await _corridaRepository
          .getCorridasByTemporada(temporadaAtual.id!)
          .getOrThrow();

      corridas.sort((a, b) => b.data.compareTo(a.data));
      _corridas = corridas;

      final temporadaPilotos = await _temporadaPilotoRepository
          .getTemporadaPilotosByTemporada(temporadaAtual.id!)
          .getOrThrow();

      temporadaPilotos.sort((a, b) => b.pontos.compareTo(a.pontos));
      _temporadaPilotos = temporadaPilotos;
      return Success(unit);
    } finally {
      notifyListeners();
    }
  }
}
