// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pista.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pista _$PistaFromJson(Map<String, dynamic> json) {
  return _Pista.fromJson(json);
}

/// @nodoc
mixin _$Pista {
  String? get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String get local => throw _privateConstructorUsedError;
  String get urlImage => throw _privateConstructorUsedError;

  /// Serializes this Pista to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pista
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PistaCopyWith<Pista> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PistaCopyWith<$Res> {
  factory $PistaCopyWith(Pista value, $Res Function(Pista) then) =
      _$PistaCopyWithImpl<$Res, Pista>;
  @useResult
  $Res call({String? id, String nome, String local, String urlImage});
}

/// @nodoc
class _$PistaCopyWithImpl<$Res, $Val extends Pista>
    implements $PistaCopyWith<$Res> {
  _$PistaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pista
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = null,
    Object? local = null,
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
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PistaImplCopyWith<$Res> implements $PistaCopyWith<$Res> {
  factory _$$PistaImplCopyWith(
          _$PistaImpl value, $Res Function(_$PistaImpl) then) =
      __$$PistaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String nome, String local, String urlImage});
}

/// @nodoc
class __$$PistaImplCopyWithImpl<$Res>
    extends _$PistaCopyWithImpl<$Res, _$PistaImpl>
    implements _$$PistaImplCopyWith<$Res> {
  __$$PistaImplCopyWithImpl(
      _$PistaImpl _value, $Res Function(_$PistaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pista
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = null,
    Object? local = null,
    Object? urlImage = null,
  }) {
    return _then(_$PistaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
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
class _$PistaImpl implements _Pista {
  const _$PistaImpl(
      {this.id,
      required this.nome,
      required this.local,
      required this.urlImage});

  factory _$PistaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PistaImplFromJson(json);

  @override
  final String? id;
  @override
  final String nome;
  @override
  final String local;
  @override
  final String urlImage;

  @override
  String toString() {
    return 'Pista(id: $id, nome: $nome, local: $local, urlImage: $urlImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PistaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.local, local) || other.local == local) &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, local, urlImage);

  /// Create a copy of Pista
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PistaImplCopyWith<_$PistaImpl> get copyWith =>
      __$$PistaImplCopyWithImpl<_$PistaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PistaImplToJson(
      this,
    );
  }
}

abstract class _Pista implements Pista {
  const factory _Pista(
      {final String? id,
      required final String nome,
      required final String local,
      required final String urlImage}) = _$PistaImpl;

  factory _Pista.fromJson(Map<String, dynamic> json) = _$PistaImpl.fromJson;

  @override
  String? get id;
  @override
  String get nome;
  @override
  String get local;
  @override
  String get urlImage;

  /// Create a copy of Pista
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PistaImplCopyWith<_$PistaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
