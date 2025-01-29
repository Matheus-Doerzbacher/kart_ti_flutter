// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temporada_piloto_firebase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemporadaPilotoFirebaseModel _$TemporadaPilotoFirebaseModelFromJson(
    Map<String, dynamic> json) {
  return _TemporadaPilotoFirebaseModel.fromJson(json);
}

/// @nodoc
mixin _$TemporadaPilotoFirebaseModel {
  String? get id => throw _privateConstructorUsedError;
  String get idPiloto => throw _privateConstructorUsedError;
  String get idTemporada => throw _privateConstructorUsedError;
  int get pontos => throw _privateConstructorUsedError;
  int get vitorias => throw _privateConstructorUsedError;

  /// Serializes this TemporadaPilotoFirebaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemporadaPilotoFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemporadaPilotoFirebaseModelCopyWith<TemporadaPilotoFirebaseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemporadaPilotoFirebaseModelCopyWith<$Res> {
  factory $TemporadaPilotoFirebaseModelCopyWith(
          TemporadaPilotoFirebaseModel value,
          $Res Function(TemporadaPilotoFirebaseModel) then) =
      _$TemporadaPilotoFirebaseModelCopyWithImpl<$Res,
          TemporadaPilotoFirebaseModel>;
  @useResult
  $Res call(
      {String? id,
      String idPiloto,
      String idTemporada,
      int pontos,
      int vitorias});
}

/// @nodoc
class _$TemporadaPilotoFirebaseModelCopyWithImpl<$Res,
        $Val extends TemporadaPilotoFirebaseModel>
    implements $TemporadaPilotoFirebaseModelCopyWith<$Res> {
  _$TemporadaPilotoFirebaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemporadaPilotoFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idPiloto = null,
    Object? idTemporada = null,
    Object? pontos = null,
    Object? vitorias = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idPiloto: null == idPiloto
          ? _value.idPiloto
          : idPiloto // ignore: cast_nullable_to_non_nullable
              as String,
      idTemporada: null == idTemporada
          ? _value.idTemporada
          : idTemporada // ignore: cast_nullable_to_non_nullable
              as String,
      pontos: null == pontos
          ? _value.pontos
          : pontos // ignore: cast_nullable_to_non_nullable
              as int,
      vitorias: null == vitorias
          ? _value.vitorias
          : vitorias // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemporadaPilotoFirebaseModelImplCopyWith<$Res>
    implements $TemporadaPilotoFirebaseModelCopyWith<$Res> {
  factory _$$TemporadaPilotoFirebaseModelImplCopyWith(
          _$TemporadaPilotoFirebaseModelImpl value,
          $Res Function(_$TemporadaPilotoFirebaseModelImpl) then) =
      __$$TemporadaPilotoFirebaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String idPiloto,
      String idTemporada,
      int pontos,
      int vitorias});
}

/// @nodoc
class __$$TemporadaPilotoFirebaseModelImplCopyWithImpl<$Res>
    extends _$TemporadaPilotoFirebaseModelCopyWithImpl<$Res,
        _$TemporadaPilotoFirebaseModelImpl>
    implements _$$TemporadaPilotoFirebaseModelImplCopyWith<$Res> {
  __$$TemporadaPilotoFirebaseModelImplCopyWithImpl(
      _$TemporadaPilotoFirebaseModelImpl _value,
      $Res Function(_$TemporadaPilotoFirebaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemporadaPilotoFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idPiloto = null,
    Object? idTemporada = null,
    Object? pontos = null,
    Object? vitorias = null,
  }) {
    return _then(_$TemporadaPilotoFirebaseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idPiloto: null == idPiloto
          ? _value.idPiloto
          : idPiloto // ignore: cast_nullable_to_non_nullable
              as String,
      idTemporada: null == idTemporada
          ? _value.idTemporada
          : idTemporada // ignore: cast_nullable_to_non_nullable
              as String,
      pontos: null == pontos
          ? _value.pontos
          : pontos // ignore: cast_nullable_to_non_nullable
              as int,
      vitorias: null == vitorias
          ? _value.vitorias
          : vitorias // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemporadaPilotoFirebaseModelImpl
    implements _TemporadaPilotoFirebaseModel {
  const _$TemporadaPilotoFirebaseModelImpl(
      {this.id,
      required this.idPiloto,
      required this.idTemporada,
      required this.pontos,
      required this.vitorias});

  factory _$TemporadaPilotoFirebaseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TemporadaPilotoFirebaseModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String idPiloto;
  @override
  final String idTemporada;
  @override
  final int pontos;
  @override
  final int vitorias;

  @override
  String toString() {
    return 'TemporadaPilotoFirebaseModel(id: $id, idPiloto: $idPiloto, idTemporada: $idTemporada, pontos: $pontos, vitorias: $vitorias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemporadaPilotoFirebaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idPiloto, idPiloto) ||
                other.idPiloto == idPiloto) &&
            (identical(other.idTemporada, idTemporada) ||
                other.idTemporada == idTemporada) &&
            (identical(other.pontos, pontos) || other.pontos == pontos) &&
            (identical(other.vitorias, vitorias) ||
                other.vitorias == vitorias));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, idPiloto, idTemporada, pontos, vitorias);

  /// Create a copy of TemporadaPilotoFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemporadaPilotoFirebaseModelImplCopyWith<
          _$TemporadaPilotoFirebaseModelImpl>
      get copyWith => __$$TemporadaPilotoFirebaseModelImplCopyWithImpl<
          _$TemporadaPilotoFirebaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemporadaPilotoFirebaseModelImplToJson(
      this,
    );
  }
}

abstract class _TemporadaPilotoFirebaseModel
    implements TemporadaPilotoFirebaseModel {
  const factory _TemporadaPilotoFirebaseModel(
      {final String? id,
      required final String idPiloto,
      required final String idTemporada,
      required final int pontos,
      required final int vitorias}) = _$TemporadaPilotoFirebaseModelImpl;

  factory _TemporadaPilotoFirebaseModel.fromJson(Map<String, dynamic> json) =
      _$TemporadaPilotoFirebaseModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get idPiloto;
  @override
  String get idTemporada;
  @override
  int get pontos;
  @override
  int get vitorias;

  /// Create a copy of TemporadaPilotoFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemporadaPilotoFirebaseModelImplCopyWith<
          _$TemporadaPilotoFirebaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
