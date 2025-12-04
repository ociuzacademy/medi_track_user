// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TokenStatusState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenStatusState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TokenStatusState()';
}


}

/// @nodoc
class $TokenStatusStateCopyWith<$Res>  {
$TokenStatusStateCopyWith(TokenStatusState _, $Res Function(TokenStatusState) __);
}


/// Adds pattern-matching-related methods to [TokenStatusState].
extension TokenStatusStatePatterns on TokenStatusState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TokenStatusInitial value)?  initial,TResult Function( TokenStatusLoading value)?  loading,TResult Function( TokenStatusSuccess value)?  success,TResult Function( TokenStatusError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TokenStatusInitial() when initial != null:
return initial(_that);case TokenStatusLoading() when loading != null:
return loading(_that);case TokenStatusSuccess() when success != null:
return success(_that);case TokenStatusError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TokenStatusInitial value)  initial,required TResult Function( TokenStatusLoading value)  loading,required TResult Function( TokenStatusSuccess value)  success,required TResult Function( TokenStatusError value)  error,}){
final _that = this;
switch (_that) {
case TokenStatusInitial():
return initial(_that);case TokenStatusLoading():
return loading(_that);case TokenStatusSuccess():
return success(_that);case TokenStatusError():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TokenStatusInitial value)?  initial,TResult? Function( TokenStatusLoading value)?  loading,TResult? Function( TokenStatusSuccess value)?  success,TResult? Function( TokenStatusError value)?  error,}){
final _that = this;
switch (_that) {
case TokenStatusInitial() when initial != null:
return initial(_that);case TokenStatusLoading() when loading != null:
return loading(_that);case TokenStatusSuccess() when success != null:
return success(_that);case TokenStatusError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TokenStatusModel data)?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TokenStatusInitial() when initial != null:
return initial();case TokenStatusLoading() when loading != null:
return loading();case TokenStatusSuccess() when success != null:
return success(_that.data);case TokenStatusError() when error != null:
return error(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TokenStatusModel data)  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case TokenStatusInitial():
return initial();case TokenStatusLoading():
return loading();case TokenStatusSuccess():
return success(_that.data);case TokenStatusError():
return error(_that.error);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TokenStatusModel data)?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case TokenStatusInitial() when initial != null:
return initial();case TokenStatusLoading() when loading != null:
return loading();case TokenStatusSuccess() when success != null:
return success(_that.data);case TokenStatusError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class TokenStatusInitial implements TokenStatusState {
  const TokenStatusInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenStatusInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TokenStatusState.initial()';
}


}




/// @nodoc


class TokenStatusLoading implements TokenStatusState {
  const TokenStatusLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenStatusLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TokenStatusState.loading()';
}


}




/// @nodoc


class TokenStatusSuccess implements TokenStatusState {
  const TokenStatusSuccess(this.data);
  

 final  TokenStatusModel data;

/// Create a copy of TokenStatusState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenStatusSuccessCopyWith<TokenStatusSuccess> get copyWith => _$TokenStatusSuccessCopyWithImpl<TokenStatusSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenStatusSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'TokenStatusState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $TokenStatusSuccessCopyWith<$Res> implements $TokenStatusStateCopyWith<$Res> {
  factory $TokenStatusSuccessCopyWith(TokenStatusSuccess value, $Res Function(TokenStatusSuccess) _then) = _$TokenStatusSuccessCopyWithImpl;
@useResult
$Res call({
 TokenStatusModel data
});




}
/// @nodoc
class _$TokenStatusSuccessCopyWithImpl<$Res>
    implements $TokenStatusSuccessCopyWith<$Res> {
  _$TokenStatusSuccessCopyWithImpl(this._self, this._then);

  final TokenStatusSuccess _self;
  final $Res Function(TokenStatusSuccess) _then;

/// Create a copy of TokenStatusState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(TokenStatusSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TokenStatusModel,
  ));
}


}

/// @nodoc


class TokenStatusError implements TokenStatusState {
  const TokenStatusError(this.error);
  

 final  String error;

/// Create a copy of TokenStatusState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenStatusErrorCopyWith<TokenStatusError> get copyWith => _$TokenStatusErrorCopyWithImpl<TokenStatusError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenStatusError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'TokenStatusState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $TokenStatusErrorCopyWith<$Res> implements $TokenStatusStateCopyWith<$Res> {
  factory $TokenStatusErrorCopyWith(TokenStatusError value, $Res Function(TokenStatusError) _then) = _$TokenStatusErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$TokenStatusErrorCopyWithImpl<$Res>
    implements $TokenStatusErrorCopyWith<$Res> {
  _$TokenStatusErrorCopyWithImpl(this._self, this._then);

  final TokenStatusError _self;
  final $Res Function(TokenStatusError) _then;

/// Create a copy of TokenStatusState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(TokenStatusError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
