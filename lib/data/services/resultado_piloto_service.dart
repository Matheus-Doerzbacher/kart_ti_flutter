import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/data/model/resultado_piloto/resultado_piloto_firebase_model.dart';
import 'package:result_dart/result_dart.dart';

class ResultadoPilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AsyncResult<Unit> createResultadoPiloto(
      ResultadoPilotoFirebaseModel resultadoPiloto) async {
    try {
      final resultadoPilotoDoc =
          _firestore.collection('resultadoPilotos').doc();
      final resultadoPilotoComId =
          resultadoPiloto.copyWith(id: resultadoPilotoDoc.id);
      await resultadoPilotoDoc.set(resultadoPilotoComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> updateResultadoPiloto(
      ResultadoPilotoFirebaseModel resultadoPiloto) async {
    try {
      await _firestore
          .collection('resultadoPilotos')
          .doc(resultadoPiloto.id)
          .update(resultadoPiloto.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> deleteResultadoPiloto(String id) async {
    try {
      await _firestore.collection('resultadoPilotos').doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<List<ResultadoPilotoFirebaseModel>> getResultadoPilotosByCorrida(
      String idCorrida) async {
    try {
      final resultadoPilotos = await _firestore
          .collection('resultadoPilotos')
          .where('idCorrida', isEqualTo: idCorrida)
          .get();
      return Success(
        resultadoPilotos.docs
            .map((e) => ResultadoPilotoFirebaseModel.fromJson(e.data()))
            .toList(),
      );
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
