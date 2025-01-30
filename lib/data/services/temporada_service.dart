import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/model/temporada/temporada.dart';
import 'package:logging/logging.dart';
import 'package:result_dart/result_dart.dart';

final temporadaKey = 'temporada';

class TemporadaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final _log = Logger('TemporadaService');

  AsyncResult<Temporada> getTemporadaById(String idTemporada) async {
    try {
      final temporada =
          await _firestore.collection(temporadaKey).doc(idTemporada).get();
      return Success(Temporada.fromJson(temporada.data()!));
    } on Exception catch (e) {
      _log.severe('Erro ao buscar temporada por id', e);
      return Failure(e);
    }
  }

  AsyncResult<Temporada> getTemporadaAtual() async {
    try {
      final temporada = await _firestore
          .collection(temporadaKey)
          .where('atual', isEqualTo: true)
          .get();
      return Success(Temporada.fromJson(temporada.docs.first.data()));
    } on Exception catch (e) {
      _log.severe('Erro ao buscar temporada atual', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> createTemporada(Temporada temporada) async {
    try {
      final temporadaDoc = _firestore.collection(temporadaKey).doc();
      final temporadaComId = temporada.copyWith(id: temporadaDoc.id);
      await temporadaDoc.set(temporadaComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao criar temporada', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> updateTemporada(Temporada temporada) async {
    try {
      await _firestore
          .collection(temporadaKey)
          .doc(temporada.id)
          .update(temporada.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao atualizar temporada', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> deleteTemporada(String id) async {
    try {
      await _firestore.collection(temporadaKey).doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao deletar temporada', e);
      return Failure(e);
    }
  }

  AsyncResult<List<Temporada>> getTemporadas() async {
    try {
      final temporadas = await _firestore.collection(temporadaKey).get();
      return Success(
        temporadas.docs.map((e) => Temporada.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      _log.severe('Erro ao buscar temporadas', e);
      return Failure(e);
    }
  }
}
