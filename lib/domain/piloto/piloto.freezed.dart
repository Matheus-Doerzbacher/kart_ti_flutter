// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'piloto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Piloto _$PilotoFromJson(Map<String, dynamic> json) {
  return _Piloto.fromJson(json);
}

/// @nodoc
mixin _$Piloto {
  String? get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String get urlImage => throw _privateConstructorUsedError;

  /// Serializes this Piloto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Piloto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PilotoCopyWith<Piloto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PilotoCopyWith<$Res> {
  factory $PilotoCopyWith(Piloto value, $Res Function(Piloto) then) =
      _$PilotoCopyWithImpl<$Res, Piloto>;
  @useResult
  $Res call({String? id, String nome, String urlImage});
}

/// @nodoc
class _$PilotoCopyWithImpl<$Res, $Val extends Piloto>
    implements $PilotoCopyWith<$Res> {
  _$PilotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Piloto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = null,
    Object? urlImage = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PilotoImplCopyWith<$Res> implements $PilotoCopyWith<$Res> {
  factory _$$PilotoImplCopyWith(
          _$PilotoImpl value, $Res Function(_$PilotoImpl) then) =
      __$$PilotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String nome, String urlImage});
}

/// @nodoc
class __$$PilotoImplCopyWithImpl<$Res>
    extends _$PilotoCopyWithImpl<$Res, _$PilotoImpl>
    implements _$$PilotoImplCopyWith<$Res> {
  __$$PilotoImplCopyWithImpl(
      _$PilotoImpl _value, $Res Function(_$PilotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Piloto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = null,
    Object? urlImage = null,
  }) {
    return _then(_$PilotoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PilotoImpl implements _Piloto {
  const _$PilotoImpl({this.id, required this.nome, required this.urlImage});

  factory _$PilotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PilotoImplFromJson(json);

  @override
  final String? id;
  @override
  final String nome;
  @override
  final String urlImage;

  @override
  String toString() {
    return 'Piloto(id: $id, nome: $nome, urlImage: $urlImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PilotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, urlImage);

  /// Create a copy of Piloto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PilotoImplCopyWith<_$PilotoImpl> get copyWith =>
      __$$PilotoImplCopyWithImpl<_$PilotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PilotoImplToJson(
      this,
    );
  }
}

abstract class _Piloto implements Piloto {
  const factory _Piloto(
      {final String? id,
      required final String nome,
      required final String urlImage}) = _$PilotoImpl;

  factory _Piloto.fromJson(Map<String, dynamic> json) = _$PilotoImpl.fromJson;

  @override
  String? get id;
  @override
  String get nome;
  @override
  String get urlImage;

  /// Create a copy of Piloto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PilotoImplCopyWith<_$PilotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
