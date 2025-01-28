// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temporada.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Temporada _$TemporadaFromJson(Map<String, dynamic> json) {
  return _Temporada.fromJson(json);
}

/// @nodoc
mixin _$Temporada {
  String? get id => throw _privateConstructorUsedError;
  int get ano => throw _privateConstructorUsedError;
  bool get atual => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;

  /// Serializes this Temporada to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Temporada
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemporadaCopyWith<Temporada> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemporadaCopyWith<$Res> {
  factory $TemporadaCopyWith(Temporada value, $Res Function(Temporada) then) =
      _$TemporadaCopyWithImpl<$Res, Temporada>;
  @useResult
  $Res call({String? id, int ano, bool atual, String nome});
}

/// @nodoc
class _$TemporadaCopyWithImpl<$Res, $Val extends Temporada>
    implements $TemporadaCopyWith<$Res> {
  _$TemporadaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Temporada
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ano = null,
    Object? atual = null,
    Object? nome = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ano: null == ano
          ? _value.ano
          : ano // ignore: cast_nullable_to_non_nullable
              as int,
      atual: null == atual
          ? _value.atual
          : atual // ignore: cast_nullable_to_non_nullable
              as bool,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemporadaImplCopyWith<$Res>
    implements $TemporadaCopyWith<$Res> {
  factory _$$TemporadaImplCopyWith(
          _$TemporadaImpl value, $Res Function(_$TemporadaImpl) then) =
      __$$TemporadaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, int ano, bool atual, String nome});
}

/// @nodoc
class __$$TemporadaImplCopyWithImpl<$Res>
    extends _$TemporadaCopyWithImpl<$Res, _$TemporadaImpl>
    implements _$$TemporadaImplCopyWith<$Res> {
  __$$TemporadaImplCopyWithImpl(
      _$TemporadaImpl _value, $Res Function(_$TemporadaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Temporada
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ano = null,
    Object? atual = null,
    Object? nome = null,
  }) {
    return _then(_$TemporadaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ano: null == ano
          ? _value.ano
          : ano // ignore: cast_nullable_to_non_nullable
              as int,
      atual: null == atual
          ? _value.atual
          : atual // ignore: cast_nullable_to_non_nullable
              as bool,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemporadaImpl implements _Temporada {
  const _$TemporadaImpl(
      {this.id, required this.ano, required this.atual, required this.nome});

  factory _$TemporadaImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemporadaImplFromJson(json);

  @override
  final String? id;
  @override
  final int ano;
  @override
  final bool atual;
  @override
  final String nome;

  @override
  String toString() {
    return 'Temporada(id: $id, ano: $ano, atual: $atual, nome: $nome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemporadaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ano, ano) || other.ano == ano) &&
            (identical(other.atual, atual) || other.atual == atual) &&
            (identical(other.nome, nome) || other.nome == nome));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, ano, atual, nome);

  /// Create a copy of Temporada
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemporadaImplCopyWith<_$TemporadaImpl> get copyWith =>
      __$$TemporadaImplCopyWithImpl<_$TemporadaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemporadaImplToJson(
      this,
    );
  }
}

abstract class _Temporada implements Temporada {
  const factory _Temporada(
      {final String? id,
      required final int ano,
      required final bool atual,
      required final String nome}) = _$TemporadaImpl;

  factory _Temporada.fromJson(Map<String, dynamic> json) =
      _$TemporadaImpl.fromJson;

  @override
  String? get id;
  @override
  int get ano;
  @override
  bool get atual;
  @override
  String get nome;

  /// Create a copy of Temporada
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemporadaImplCopyWith<_$TemporadaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
