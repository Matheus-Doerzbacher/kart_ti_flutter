import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/model/pista/pista.dart';
import 'package:logging/logging.dart';
import 'package:result_dart/result_dart.dart';

final pistaKey = 'pista';

class PistaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final _log = Logger('PistaService');

  AsyncResult<Pista> getPistaById(String idPista) async {
    try {
      final pista = await _firestore.collection(pistaKey).doc(idPista).get();
      return Success(Pista.fromJson(pista.data()!));
    } on Exception catch (e) {
      _log.severe('Erro ao buscar pista', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> createPista(Pista pista) async {
    try {
      final pistaDoc = _firestore.collection(pistaKey).doc();
      final pistaComId = pista.copyWith(id: pistaDoc.id);
      await pistaDoc.set(pistaComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao criar pista', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> updatePista(Pista pista) async {
    try {
      await _firestore
          .collection(pistaKey)
          .doc(pista.id)
          .update(pista.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao atualizar pista', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> deletePista(String id) async {
    try {
      await _firestore.collection(pistaKey).doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao deletar pista', e);
      return Failure(e);
    }
  }

  AsyncResult<List<Pista>> getPistas() async {
    try {
      final pistas = await _firestore.collection(pistaKey).get();
      return Success(
        pistas.docs.map((e) => Pista.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      _log.severe('Erro ao buscar pistas', e);
      return Failure(e);
    }
  }
}
