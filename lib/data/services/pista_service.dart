import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/model/pista/pista.dart';
import 'package:result_dart/result_dart.dart';

class PistaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AsyncResult<Pista> getPista(String idPista) async {
    try {
      final pista = await _firestore.collection('pistas').doc(idPista).get();
      return Success(Pista.fromJson(pista.data()!));
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> createPista(Pista pista) async {
    try {
      final pistaDoc = _firestore.collection('pistas').doc();
      final pistaComId = pista.copyWith(id: pistaDoc.id);
      await pistaDoc.set(pistaComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> updatePista(Pista pista) async {
    try {
      await _firestore
          .collection('pistas')
          .doc(pista.id)
          .update(pista.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> deletePista(String id) async {
    try {
      await _firestore.collection('pistas').doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<List<Pista>> getPistas() async {
    try {
      final pistas = await _firestore.collection('pistas').get();
      return Success(
        pistas.docs.map((e) => Pista.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
