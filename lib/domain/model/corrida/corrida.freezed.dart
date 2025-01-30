// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'corrida.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Corrida _$CorridaFromJson(Map<String, dynamic> json) {
  return _Corrida.fromJson(json);
}

/// @nodoc
mixin _$Corrida {
  String? get id => throw _privateConstructorUsedError;
  Piloto? get pilotoGanhador => throw _privateConstructorUsedError;
  Pista get pista => throw _privateConstructorUsedError;
  Temporada get temporada => throw _privateConstructorUsedError;
  String? get tempo => throw _privateConstructorUsedError;
  int? get voltas => throw _privateConstructorUsedError;
  DateTime get data => throw _privateConstructorUsedError;

  /// Serializes this Corrida to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Corrida
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CorridaCopyWith<Corrida> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorridaCopyWith<$Res> {
  factory $CorridaCopyWith(Corrida value, $Res Function(Corrida) then) =
      _$CorridaCopyWithImpl<$Res, Corrida>;
  @useResult
  $Res call(
      {String? id,
      Piloto? pilotoGanhador,
      Pista pista,
      Temporada temporada,
      String? tempo,
      int? voltas,
      DateTime data});

  $PilotoCopyWith<$Res>? get pilotoGanhador;
  $PistaCopyWith<$Res> get pista;
  $TemporadaCopyWith<$Res> get temporada;
}

/// @nodoc
class _$CorridaCopyWithImpl<$Res, $Val extends Corrida>
    implements $CorridaCopyWith<$Res> {
  _$CorridaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Corrida
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pilotoGanhador = freezed,
    Object? pista = null,
    Object? temporada = null,
    Object? tempo = freezed,
    Object? voltas = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pilotoGanhador: freezed == pilotoGanhador
          ? _value.pilotoGanhador
          : pilotoGanhador // ignore: cast_nullable_to_non_nullable
              as Piloto?,
      pista: null == pista
          ? _value.pista
          : pista // ignore: cast_nullable_to_non_nullable
              as Pista,
      temporada: null == temporada
          ? _value.temporada
          : temporada // ignore: cast_nullable_to_non_nullable
              as Temporada,
      tempo: freezed == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as String?,
      voltas: freezed == voltas
          ? _value.voltas
          : voltas // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Corrida
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PilotoCopyWith<$Res>? get pilotoGanhador {
    if (_value.pilotoGanhador == null) {
      return null;
    }

    return $PilotoCopyWith<$Res>(_value.pilotoGanhador!, (value) {
      return _then(_value.copyWith(pilotoGanhador: value) as $Val);
    });
  }

  /// Create a copy of Corrida
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PistaCopyWith<$Res> get pista {
    return $PistaCopyWith<$Res>(_value.pista, (value) {
      return _then(_value.copyWith(pista: value) as $Val);
    });
  }

  /// Create a copy of Corrida
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemporadaCopyWith<$Res> get temporada {
    return $TemporadaCopyWith<$Res>(_value.temporada, (value) {
      return _then(_value.copyWith(temporada: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CorridaImplCopyWith<$Res> implements $CorridaCopyWith<$Res> {
  factory _$$CorridaImplCopyWith(
          _$CorridaImpl value, $Res Function(_$CorridaImpl) then) =
      __$$CorridaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Piloto? pilotoGanhador,
      Pista pista,
      Temporada temporada,
      String? tempo,
      int? voltas,
      DateTime data});

  @override
  $PilotoCopyWith<$Res>? get pilotoGanhador;
  @override
  $PistaCopyWith<$Res> get pista;
  @override
  $TemporadaCopyWith<$Res> get temporada;
}

/// @nodoc
class __$$CorridaImplCopyWithImpl<$Res>
    extends _$CorridaCopyWithImpl<$Res, _$CorridaImpl>
    implements _$$CorridaImplCopyWith<$Res> {
  __$$CorridaImplCopyWithImpl(
      _$CorridaImpl _value, $Res Function(_$CorridaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Corrida
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pilotoGanhador = freezed,
    Object? pista = null,
    Object? temporada = null,
    Object? tempo = freezed,
    Object? voltas = freezed,
    Object? data = null,
  }) {
    return _then(_$CorridaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pilotoGanhador: freezed == pilotoGanhador
          ? _value.pilotoGanhador
          : pilotoGanhador // ignore: cast_nullable_to_non_nullable
              as Piloto?,
      pista: null == pista
          ? _value.pista
          : pista // ignore: cast_nullable_to_non_nullable
              as Pista,
      temporada: null == temporada
          ? _value.temporada
          : temporada // ignore: cast_nullable_to_non_nullable
              as Temporada,
      tempo: freezed == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as String?,
      voltas: freezed == voltas
          ? _value.voltas
          : voltas // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CorridaImpl implements _Corrida {
  const _$CorridaImpl(
      {this.id,
      this.pilotoGanhador,
      required this.pista,
      required this.temporada,
      this.tempo,
      this.voltas,
      required this.data});

  factory _$CorridaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CorridaImplFromJson(json);

  @override
  final String? id;
  @override
  final Piloto? pilotoGanhador;
  @override
  final Pista pista;
  @override
  final Temporada temporada;
  @override
  final String? tempo;
  @override
  final int? voltas;
  @override
  final DateTime data;

  @override
  String toString() {
    return 'Corrida(id: $id, pilotoGanhador: $pilotoGanhador, pista: $pista, temporada: $temporada, tempo: $tempo, voltas: $voltas, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CorridaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pilotoGanhador, pilotoGanhador) ||
                other.pilotoGanhador == pilotoGanhador) &&
            (identical(other.pista, pista) || other.pista == pista) &&
            (identical(other.temporada, temporada) ||
                other.temporada == temporada) &&
            (identical(other.tempo, tempo) || other.tempo == tempo) &&
            (identical(other.voltas, voltas) || other.voltas == voltas) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, pilotoGanhador, pista, temporada, tempo, voltas, data);

  /// Create a copy of Corrida
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CorridaImplCopyWith<_$CorridaImpl> get copyWith =>
      __$$CorridaImplCopyWithImpl<_$CorridaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CorridaImplToJson(
      this,
    );
  }
}

abstract class _Corrida implements Corrida {
  const factory _Corrida(
      {final String? id,
      final Piloto? pilotoGanhador,
      required final Pista pista,
      required final Temporada temporada,
      final String? tempo,
      final int? voltas,
      required final DateTime data}) = _$CorridaImpl;

  factory _Corrida.fromJson(Map<String, dynamic> json) = _$CorridaImpl.fromJson;

  @override
  String? get id;
  @override
  Piloto? get pilotoGanhador;
  @override
  Pista get pista;
  @override
  Temporada get temporada;
  @override
  String? get tempo;
  @override
  int? get voltas;
  @override
  DateTime get data;

  /// Create a copy of Corrida
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CorridaImplCopyWith<_$CorridaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
