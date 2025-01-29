import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/data/model/resultado_piloto/resultado_piloto_firebase_model.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class ResultadoPilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Result<void>> createResultadoPiloto(
      ResultadoPilotoFirebaseModel resultadoPiloto) async {
    try {
      final resultadoPilotoDoc =
          _firestore.collection('resultadoPilotos').doc();
      final resultadoPilotoComId =
          resultadoPiloto.copyWith(id: resultadoPilotoDoc.id);
      await resultadoPilotoDoc.set(resultadoPilotoComId.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> updateResultadoPiloto(
      ResultadoPilotoFirebaseModel resultadoPiloto) async {
    try {
      await _firestore
          .collection('resultadoPilotos')
          .doc(resultadoPiloto.id)
          .update(resultadoPiloto.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> deleteResultadoPiloto(String id) async {
    try {
      await _firestore.collection('resultadoPilotos').doc(id).delete();
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<ResultadoPilotoFirebaseModel>>>
      getResultadoPilotosByCorrida(String idCorrida) async {
    try {
      final resultadoPilotos = await _firestore
          .collection('resultadoPilotos')
          .where('idCorrida', isEqualTo: idCorrida)
          .get();
      return Result.ok(
        resultadoPilotos.docs
            .map((e) => ResultadoPilotoFirebaseModel.fromJson(e.data()))
            .toList(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
