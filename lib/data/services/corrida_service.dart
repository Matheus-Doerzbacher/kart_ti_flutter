import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/data/model/corrida/corrida_firebase_model.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class CorridaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Result<void>> createCorrida(CorridaFirebaseModel corrida) async {
    try {
      final corridaDoc = _firestore.collection('corridas').doc();
      final corridaComId = corrida.copyWith(id: corridaDoc.id);
      await corridaDoc.set(corridaComId.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> updateCorrida(CorridaFirebaseModel corrida) async {
    try {
      await _firestore
          .collection('corridas')
          .doc(corrida.id)
          .update(corrida.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> deleteCorrida(String id) async {
    try {
      await _firestore.collection('corridas').doc(id).delete();
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<CorridaFirebaseModel>>> getCorridasByTemporada(
    String idTemporada,
  ) async {
    try {
      final corridas = await _firestore
          .collection('corridas')
          .where('idTemporada', isEqualTo: idTemporada)
          .get();
      return Result.ok(
        corridas.docs
            .map((e) => CorridaFirebaseModel.fromJson(e.data()))
            .toList(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<CorridaFirebaseModel>>> getCorridasByPiloto(
    String idPiloto,
  ) async {
    try {
      final corridas = await _firestore
          .collection('corridas')
          .where('idPiloto', isEqualTo: idPiloto)
          .get();
      return Result.ok(
        corridas.docs
            .map((e) => CorridaFirebaseModel.fromJson(e.data()))
            .toList(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
