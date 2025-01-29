import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class PilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Result<Piloto>> getPiloto(String idPiloto) async {
    try {
      final piloto = await _firestore.collection('pilotos').doc(idPiloto).get();
      return Result.ok(Piloto.fromJson(piloto.data()!));
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> createPiloto(Piloto piloto) async {
    try {
      final pilotoDoc = _firestore.collection('pilotos').doc();
      final pilotoComId = piloto.copyWith(id: pilotoDoc.id);
      await pilotoDoc.set(pilotoComId.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> updatePiloto(Piloto piloto) async {
    try {
      await _firestore
          .collection('pilotos')
          .doc(piloto.id)
          .update(piloto.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> deletePiloto(String id) async {
    try {
      await _firestore.collection('pilotos').doc(id).delete();
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<Piloto>>> getPilotos() async {
    try {
      final pilotos = await _firestore.collection('pilotos').get();
      return Result.ok(
        pilotos.docs.map((e) => Piloto.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
