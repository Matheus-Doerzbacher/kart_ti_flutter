import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/model/resultado_piloto/resultado_piloto.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class ResultadoPilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Result<void>> createResultadoPiloto(
      ResultadoPiloto resultadoPiloto) async {
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
      ResultadoPiloto resultadoPiloto) async {
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

  Future<Result<List<ResultadoPiloto>>> getResultadoPilotosByCorrida(
      String idCorrida) async {
    try {
      final resultadoPilotos = await _firestore
          .collection('resultadoPilotos')
          .where('idCorrida', isEqualTo: idCorrida)
          .get();
      return Result.ok(
        resultadoPilotos.docs
            .map((e) => ResultadoPiloto.fromJson(e.data()))
            .toList(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
