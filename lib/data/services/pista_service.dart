import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/model/pista/pista.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class PistaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Result<void>> createPista(Pista pista) async {
    try {
      final pistaDoc = _firestore.collection('pistas').doc();
      final pistaComId = pista.copyWith(id: pistaDoc.id);
      await pistaDoc.set(pistaComId.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> updatePista(Pista pista) async {
    try {
      await _firestore
          .collection('pistas')
          .doc(pista.id)
          .update(pista.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> deletePista(String id) async {
    try {
      await _firestore.collection('pistas').doc(id).delete();
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<Pista>>> getPistas() async {
    try {
      final pistas = await _firestore.collection('pistas').get();
      return Result.ok(
        pistas.docs.map((e) => Pista.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
