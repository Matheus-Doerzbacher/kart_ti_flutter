import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/temporada/temporada.dart';
import 'package:kart_ti_flutter/utils/result.dart';

class TemporadaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Result<void>> createTemporada(Temporada temporada) async {
    try {
      final temporadaDoc = _firestore.collection('temporadas').doc();
      final temporadaComId = temporada.copyWith(id: temporadaDoc.id);
      await temporadaDoc.set(temporadaComId.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> updateTemporada(Temporada temporada) async {
    try {
      await _firestore
          .collection('temporadas')
          .doc(temporada.id)
          .update(temporada.toJson());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> deleteTemporada(String id) async {
    try {
      await _firestore.collection('temporadas').doc(id).delete();
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<Temporada>>> getTemporadas() async {
    try {
      final temporadas = await _firestore.collection('temporadas').get();
      return Result.ok(
        temporadas.docs.map((e) => Temporada.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
