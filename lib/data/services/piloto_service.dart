import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';
import 'package:result_dart/result_dart.dart';

class PilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AsyncResult<Piloto> getPiloto(String idPiloto) async {
    try {
      final piloto = await _firestore.collection('pilotos').doc(idPiloto).get();
      return Success(Piloto.fromJson(piloto.data()!));
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> createPiloto(Piloto piloto) async {
    try {
      final pilotoDoc = _firestore.collection('pilotos').doc();
      final pilotoComId = piloto.copyWith(id: pilotoDoc.id);
      await pilotoDoc.set(pilotoComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> updatePiloto(Piloto piloto) async {
    try {
      await _firestore
          .collection('pilotos')
          .doc(piloto.id)
          .update(piloto.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> deletePiloto(String id) async {
    try {
      await _firestore.collection('pilotos').doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<List<Piloto>> getPilotos() async {
    try {
      final pilotos = await _firestore.collection('pilotos').get();
      return Success(
        pilotos.docs.map((e) => Piloto.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
