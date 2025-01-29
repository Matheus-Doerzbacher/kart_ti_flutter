import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/data/model/temporada_piloto/temporada_piloto_firebase_model.dart';
import 'package:result_dart/result_dart.dart';

class TemporadaPilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AsyncResult<Unit> createTemporadaPiloto(
      TemporadaPilotoFirebaseModel temporadaPiloto) async {
    try {
      final temporadaPilotoDoc =
          _firestore.collection('temporadaPilotos').doc();
      final temporadaPilotoComId =
          temporadaPiloto.copyWith(id: temporadaPilotoDoc.id);
      await temporadaPilotoDoc.set(temporadaPilotoComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> updateTemporadaPiloto(
      TemporadaPilotoFirebaseModel temporadaPiloto) async {
    try {
      await _firestore
          .collection('temporadaPilotos')
          .doc(temporadaPiloto.id)
          .update(temporadaPiloto.toJson());
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> deleteTemporadaPiloto(String id) async {
    try {
      await _firestore.collection('temporadaPilotos').doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<List<TemporadaPilotoFirebaseModel>>
      getTemporadaPilotosByTemporada(String idTemporada) async {
    try {
      final temporadaPilotos = await _firestore
          .collection('temporadaPilotos')
          .where('idTemporada', isEqualTo: idTemporada)
          .get();
      return Success(temporadaPilotos.docs
          .map((e) => TemporadaPilotoFirebaseModel.fromJson(e.data()))
          .toList());
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
