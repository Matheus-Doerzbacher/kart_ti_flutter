import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/data/model/resultado_piloto/resultado_piloto_firebase_model.dart';
import 'package:logging/logging.dart';
import 'package:result_dart/result_dart.dart';

final resultadoPilotoKey = 'resultadoPiloto';

class ResultadoPilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final _log = Logger('ResultadoPilotoService');

  AsyncResult<Unit> createResultadoPiloto(
      ResultadoPilotoFirebaseModel resultadoPiloto) async {
    try {
      final resultadoPilotoDoc =
          _firestore.collection(resultadoPilotoKey).doc();
      final resultadoPilotoComId =
          resultadoPiloto.copyWith(id: resultadoPilotoDoc.id);
      await resultadoPilotoDoc.set(resultadoPilotoComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao criar resultado piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> updateResultadoPiloto(
      ResultadoPilotoFirebaseModel resultadoPiloto) async {
    try {
      await _firestore
          .collection(resultadoPilotoKey)
          .doc(resultadoPiloto.id)
          .update(resultadoPiloto.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao atualizar resultado piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> deleteResultadoPiloto(String id) async {
    try {
      await _firestore.collection(resultadoPilotoKey).doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao deletar resultado piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<List<ResultadoPilotoFirebaseModel>> getResultadoPilotosByCorrida(
      String idCorrida) async {
    try {
      final resultadoPilotos = await _firestore
          .collection(resultadoPilotoKey)
          .where('idCorrida', isEqualTo: idCorrida)
          .get();
      return Success(
        resultadoPilotos.docs
            .map((e) => ResultadoPilotoFirebaseModel.fromJson(e.data()))
            .toList(),
      );
    } on Exception catch (e) {
      _log.severe('Erro ao buscar resultado pilotos por corrida', e);
      return Failure(e);
    }
  }
}
