// ignore_for_file: unused_field

import 'package:flutter/foundation.dart';
import 'package:kart_ti_flutter/data/repositories/corrida_repository/corrida_repository.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_repository/temporada_repository.dart';
import 'package:kart_ti_flutter/domain/model/temporada_piloto/temporada_piloto.dart';

class HomeViewModel extends ChangeNotifier {
  final TemporadaRepository _temporadaRepository;
  final CorridaRepository _corridaRepository;
  final TemporadaPiloto _temporadaPiloto;

  HomeViewModel({
    required CorridaRepository corridaRepository,
    required TemporadaRepository temporadaRepository,
    required TemporadaPiloto temporadaPiloto,
  })  : _corridaRepository = corridaRepository,
        _temporadaRepository = temporadaRepository,
        _temporadaPiloto = temporadaPiloto {
    // load = Command0(_load)..execute();
  }

  // late Command0 load;

  // AsyncResult<Unit>> _load() async {
  //   try {
  //     final temporadaAtual = _temporadaRepository.getTemporadaAtual();
  //   } on Exception catch (e) {
  //     return Result.error(e);
  //   }
  // }
}
