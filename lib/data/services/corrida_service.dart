import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kart_ti_flutter/data/model/corrida/corrida_firebase_model.dart';
import 'package:logging/logging.dart';
import 'package:result_dart/result_dart.dart';

final corridaKey = 'corrida';

class CorridaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final _log = Logger('CorridaService');

  AsyncResult<CorridaFirebaseModel> getCorridaById(String id) async {
    try {
      final corrida = await _firestore.collection(corridaKey).doc(id).get();
      final data = corrida.data();
      if (data != null) {
        // Supondo que o campo de data/hora seja chamado 'timestamp'
        final timestamp = data['data'] as Timestamp;
        final dateTime = timestamp.toDate();
        data['data'] = dateTime.toIso8601String(); // Converte para String
      }
      return Success(CorridaFirebaseModel.fromJson(data!));
    } on Exception catch (e) {
      _log.warning('Erro ao buscar corrida', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> createCorrida(CorridaFirebaseModel corrida) async {
    try {
      final corridaDoc = _firestore.collection(corridaKey).doc();
      final corridaComId = corrida.copyWith(id: corridaDoc.id);
      await corridaDoc.set(corridaComId.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao criar corrida', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> updateCorrida(CorridaFirebaseModel corrida) async {
    try {
      await _firestore
          .collection(corridaKey)
          .doc(corrida.id)
          .update(corrida.toJson());
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao atualizar corrida', e);
      return Failure(e);
    }
  }

  AsyncResult<Unit> deleteCorrida(String id) async {
    try {
      await _firestore.collection(corridaKey).doc(id).delete();
      return Success(unit);
    } on Exception catch (e) {
      _log.severe('Erro ao deletar corrida', e);
      return Failure(e);
    }
  }

  AsyncResult<List<CorridaFirebaseModel>> getCorridasByTemporada(
    String idTemporada,
  ) async {
    try {
      final corridas = await _firestore
          .collection(corridaKey)
          .where('idTemporada', isEqualTo: idTemporada)
          .get();
      final corridaList = corridas.docs.map((e) {
        final data = e.data();
        if (data.containsKey('data')) {
          final timestamp = data['data'] as Timestamp;
          final dateTime = timestamp.toDate();
          data['data'] = dateTime.toIso8601String();
        }
        return CorridaFirebaseModel.fromJson(data);
      }).toList();
      return Success(corridaList);
    } on Exception catch (e) {
      _log.severe('Erro ao buscar corridas por temporada', e);
      return Failure(e);
    }
  }

  AsyncResult<List<CorridaFirebaseModel>> getCorridasByPiloto(
    String idPiloto,
  ) async {
    try {
      final corridas = await _firestore
          .collection(corridaKey)
          .where('idPiloto', isEqualTo: idPiloto)
          .get();
      final corridaList = corridas.docs.map((e) {
        final data = e.data();
        if (data.containsKey('data')) {
          final timestamp = data['data'] as Timestamp;
          final dateTime = timestamp.toDate();
          data['data'] = dateTime.toIso8601String();
        }
        return CorridaFirebaseModel.fromJson(data);
      }).toList();
      return Success(corridaList);
    } on Exception catch (e) {
      _log.severe('Erro ao buscar corridas por piloto', e);
      return Failure(e);
    }
  }
}
