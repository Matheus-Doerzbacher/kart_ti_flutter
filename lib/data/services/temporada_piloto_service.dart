import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/data/model/temporada_piloto/temporada_piloto_firebase_model.dart';
import 'package:logging/logging.dart';
import 'package:result_dart/result_dart.dart';

final temporadaPilotoKey = 'temporadaPiloto';

class TemporadaPilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final _log = Logger('TemporadaPilotoService');

  AsyncResult<Unit> createTemporadaPiloto(
      TemporadaPilotoFirebaseModel temporadaPiloto) async {
    try {
      final temporadaPilotoDoc =
          _firestore.collection(temporadaPilotoKey).doc();
      final temporadaPilotoComId =
          temporadaPiloto.copyWith(id: temporadaPilotoDoc.id);
      await temporadaPilotoDoc.set(temporadaPilotoComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao criar temporada piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> updateTemporadaPiloto(
      TemporadaPilotoFirebaseModel temporadaPiloto) async {
    try {
      await _firestore
          .collection(temporadaPilotoKey)
          .doc(temporadaPiloto.id)
          .update(temporadaPiloto.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao atualizar temporada piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> deleteTemporadaPiloto(String id) async {
    try {
      await _firestore.collection(temporadaPilotoKey).doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao deletar temporada piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<List<TemporadaPilotoFirebaseModel>>
      getTemporadaPilotosByTemporada(String idTemporada) async {
    try {
      final temporadaPilotos = await _firestore
          .collection(temporadaPilotoKey)
          .where('idTemporada', isEqualTo: idTemporada)
          .get();
      return Success(temporadaPilotos.docs
          .map((e) => TemporadaPilotoFirebaseModel.fromJson(e.data()))
          .toList());
    } on Exception catch (e) {
      _log.severe('Erro ao buscar temporada pilotos por temporada', e);
      return Failure(e);
    }
  }
}
