import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/domain/model/piloto/piloto.dart';
import 'package:logging/logging.dart';
import 'package:result_dart/result_dart.dart';

final pilotoKey = 'piloto';

class PilotoService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final _log = Logger('PilotoService');

  AsyncResult<Piloto> getPilotoById(String? idPiloto) async {
    try {
      final piloto = await _firestore //
          .collection(pilotoKey)
          .doc(idPiloto ?? '')
          .get();
      return Success(Piloto.fromJson(piloto.data()!));
    } on Exception catch (e) {
      _log.severe('Erro ao buscar piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> createPiloto(Piloto piloto) async {
    try {
      final pilotoDoc = _firestore.collection(pilotoKey).doc();
      final pilotoComId = piloto.copyWith(id: pilotoDoc.id);
      await pilotoDoc.set(pilotoComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao criar piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> updatePiloto(Piloto piloto) async {
    try {
      await _firestore
          .collection(pilotoKey)
          .doc(piloto.id)
          .update(piloto.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao atualizar piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> deletePiloto(String id) async {
    try {
      await _firestore.collection(pilotoKey).doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao deletar piloto', e);
      return Failure(e);
    }
  }

  AsyncResult<List<Piloto>> getPilotos() async {
    try {
      final pilotos = await _firestore.collection(pilotoKey).get();
      return Success(
        pilotos.docs.map((e) => Piloto.fromJson(e.data())).toList(),
      );
    } on Exception catch (e) {
      _log.severe('Erro ao buscar pilotos', e);
      return Failure(e);
    }
  }
}
