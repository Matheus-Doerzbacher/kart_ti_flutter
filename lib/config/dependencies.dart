import 'package:kart_ti_flutter/data/repositories/corrida_repository/corrida_repository.dart';
import 'package:kart_ti_flutter/data/repositories/corrida_repository/corrida_repository_remote.dart';
import 'package:kart_ti_flutter/data/repositories/piloto_repository/piloto_repository.dart';
import 'package:kart_ti_flutter/data/repositories/piloto_repository/piloto_repository_remote.dart';
import 'package:kart_ti_flutter/data/repositories/pista_repository/pista_repository.dart';
import 'package:kart_ti_flutter/data/repositories/pista_repository/pista_repository_remote.dart';
import 'package:kart_ti_flutter/data/repositories/resultado_piloto_repository/resultado_piloto_repository.dart';
import 'package:kart_ti_flutter/data/repositories/resultado_piloto_repository/resultado_piloto_repository_remote.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_piloto_respository/temporada_piloto_respository.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_piloto_respository/temporada_piloto_respository_remote.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_repository/temporada_repository.dart';
import 'package:kart_ti_flutter/data/repositories/temporada_repository/temporada_repository_remote.dart';
import 'package:kart_ti_flutter/data/services/corrida_service.dart';
import 'package:kart_ti_flutter/data/services/piloto_service.dart';
import 'package:kart_ti_flutter/data/services/pista_service.dart';
import 'package:kart_ti_flutter/data/services/resultado_piloto_service.dart';
import 'package:kart_ti_flutter/data/services/temporada_piloto_service.dart';
import 'package:kart_ti_flutter/data/services/temporada_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get providersRemote {
  return [
    // Services
    Provider(
      create: (context) => CorridaService(),
    ),
    Provider(
      create: (context) => PilotoService(),
    ),
    Provider(
      create: (context) => PistaService(),
    ),
    Provider(
      create: (context) => ResultadoPilotoService(),
    ),
    Provider(
      create: (context) => TemporadaPilotoService(),
    ),
    Provider(
      create: (context) => TemporadaService(),
    ),

    // Repositories
    Provider(
      create: (context) => CorridaRepositoryRemote(
        corridaService: context.read(),
        pilotoService: context.read(),
        temporadaService: context.read(),
        pistaService: context.read(),
      ) as CorridaRepository,
    ),
    Provider(
      create: (context) => PilotoRepositoryRemote(
        pilotoService: context.read(),
      ) as PilotoRepository,
    ),
    Provider(
      create: (context) => PistaRepositoryRemote(
        pistaService: context.read(),
      ) as PistaRepository,
    ),
    Provider(
      create: (context) => ResultadoPilotoRepositoryRemote(
        resultadoPilotoService: context.read(),
        corridaService: context.read(),
        pilotoService: context.read(),
        temporadaService: context.read(),
        pistaService: context.read(),
      ) as ResultadoPilotoRepository,
    ),
    Provider(
      create: (context) => TemporadaPilotoRespositoryRemote(
        temporadaPilotoService: context.read(),
        temporadaService: context.read(),
        pilotoService: context.read(),
      ) as TemporadaPilotoRepository,
    ),
    Provider(
      create: (context) => TemporadaRepositoryRemote(
        temporadaService: context.read(),
      ) as TemporadaRepository,
    ),
  ];
}
