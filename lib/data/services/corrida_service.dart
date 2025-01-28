import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/corrida/corrida.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class CorridaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Result<void>> createCorrida(Corrida corrida) async {
    try {
      final corridaDoc = _firestore.collection('corridas').doc();
      final corridaComId = corrida.copyWith(id: corridaDoc.id);
      await corridaDoc.set(corridaComId.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> updateCorrida(Corrida corrida) async {
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

  Future<Result<List<Corrida>>> getCorridasByTemporada(
    String idTemporada,
  ) async {
    try {
      final corridas = await _firestore
          .collection('corridas')
          .where('idTemporada', isEqualTo: idTemporada)
          .get();
      return Result.ok(
        corridas.docs.map((e) => Corrida.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<Corrida>>> getCorridasByPiloto(
    String idPiloto,
  ) async {
    try {
      final corridas = await _firestore
          .collection('corridas')
          .where('idPiloto', isEqualTo: idPiloto)
          .get();
      return Result.ok(
        corridas.docs.map((e) => Corrida.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
