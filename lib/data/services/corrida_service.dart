import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/data/model/corrida/corrida_firebase_model.dart';
import 'package:result_dart/result_dart.dart';

class CorridaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AsyncResult<Unit> createCorrida(CorridaFirebaseModel corrida) async {
    try {
      final corridaDoc = _firestore.collection('corridas').doc();
      final corridaComId = corrida.copyWith(id: corridaDoc.id);
      await corridaDoc.set(corridaComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> updateCorrida(CorridaFirebaseModel corrida) async {
    try {
      await _firestore
          .collection('corridas')
          .doc(corrida.id)
          .update(corrida.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> deleteCorrida(String id) async {
    try {
      await _firestore.collection('corridas').doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<List<CorridaFirebaseModel>> getCorridasByTemporada(
    String idTemporada,
  ) async {
    try {
      final corridas = await _firestore
          .collection('corridas')
          .where('idTemporada', isEqualTo: idTemporada)
          .get();
      return Success(
        corridas.docs
            .map((e) => CorridaFirebaseModel.fromJson(e.data()))
            .toList(),
      );
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<List<CorridaFirebaseModel>> getCorridasByPiloto(
    String idPiloto,
  ) async {
    try {
      final corridas = await _firestore
          .collection('corridas')
          .where('idPiloto', isEqualTo: idPiloto)
          .get();
      return Success(
        corridas.docs
            .map((e) => CorridaFirebaseModel.fromJson(e.data()))
            .toList(),
      );
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
