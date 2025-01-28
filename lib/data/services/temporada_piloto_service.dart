import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/temporada_piloto/temporada_piloto.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class TemporadaPilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Result<void>> createTemporadaPiloto(
      TemporadaPiloto temporadaPiloto) async {
    try {
      final temporadaPilotoDoc =
          _firestore.collection('temporadaPilotos').doc();
      final temporadaPilotoComId =
          temporadaPiloto.copyWith(id: temporadaPilotoDoc.id);
      await temporadaPilotoDoc.set(temporadaPilotoComId.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> updateTemporadaPiloto(
      TemporadaPiloto temporadaPiloto) async {
    try {
      await _firestore
          .collection('temporadaPilotos')
          .doc(temporadaPiloto.id)
          .update(temporadaPiloto.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> deleteTemporadaPiloto(String id) async {
    try {
      await _firestore.collection('temporadaPilotos').doc(id).delete();
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<TemporadaPiloto>>> getTemporadaPilotosByTemporada(
      String idTemporada) async {
    try {
      final temporadaPilotos = await _firestore
          .collection('temporadaPilotos')
          .where('idTemporada', isEqualTo: idTemporada)
          .get();
      return Result.ok(temporadaPilotos.docs
          .map((e) => TemporadaPiloto.fromJson(e.data()))
          .toList());
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
