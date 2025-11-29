// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expected_token_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExpectedTokenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpectedTokenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpectedTokenState()';
}


}

/// @nodoc
class $ExpectedTokenStateCopyWith<$Res>  {
$ExpectedTokenStateCopyWith(ExpectedTokenState _, $Res Function(ExpectedTokenState) __);
}


/// Adds pattern-matching-related methods to [ExpectedTokenState].
extension ExpectedTokenStatePatterns on ExpectedTokenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExpectedTokenInitial value)?  initial,TResult Function( ExpectedTokenLoading value)?  loading,TResult Function( ExpectedTokenSuccess value)?  success,TResult Function( ExpectedTokenError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExpectedTokenInitial() when initial != null:
return initial(_that);case ExpectedTokenLoading() when loading != null:
return loading(_that);case ExpectedTokenSuccess() when success != null:
return success(_that);case ExpectedTokenError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExpectedTokenInitial value)  initial,required TResult Function( ExpectedTokenLoading value)  loading,required TResult Function( ExpectedTokenSuccess value)  success,required TResult Function( ExpectedTokenError value)  error,}){
final _that = this;
switch (_that) {
case ExpectedTokenInitial():
return initial(_that);case ExpectedTokenLoading():
return loading(_that);case ExpectedTokenSuccess():
return success(_that);case ExpectedTokenError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExpectedTokenInitial value)?  initial,TResult? Function( ExpectedTokenLoading value)?  loading,TResult? Function( ExpectedTokenSuccess value)?  success,TResult? Function( ExpectedTokenError value)?  error,}){
final _that = this;
switch (_that) {
case ExpectedTokenInitial() when initial != null:
return initial(_that);case ExpectedTokenLoading() when loading != null:
return loading(_that);case ExpectedTokenSuccess() when success != null:
return success(_that);case ExpectedTokenError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ExpectedTokenModel expectedToken)?  success,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExpectedTokenInitial() when initial != null:
return initial();case ExpectedTokenLoading() when loading != null:
return loading();case ExpectedTokenSuccess() when success != null:
return success(_that.expectedToken);case ExpectedTokenError() when error != null:
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ExpectedTokenModel expectedToken)  success,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case ExpectedTokenInitial():
return initial();case ExpectedTokenLoading():
return loading();case ExpectedTokenSuccess():
return success(_that.expectedToken);case ExpectedTokenError():
return error(_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ExpectedTokenModel expectedToken)?  success,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case ExpectedTokenInitial() when initial != null:
return initial();case ExpectedTokenLoading() when loading != null:
return loading();case ExpectedTokenSuccess() when success != null:
return success(_that.expectedToken);case ExpectedTokenError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class ExpectedTokenInitial implements ExpectedTokenState {
  const ExpectedTokenInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpectedTokenInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpectedTokenState.initial()';
}


}




/// @nodoc


class ExpectedTokenLoading implements ExpectedTokenState {
  const ExpectedTokenLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpectedTokenLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpectedTokenState.loading()';
}


}




/// @nodoc


class ExpectedTokenSuccess implements ExpectedTokenState {
  const ExpectedTokenSuccess(this.expectedToken);
  

 final  ExpectedTokenModel expectedToken;

/// Create a copy of ExpectedTokenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpectedTokenSuccessCopyWith<ExpectedTokenSuccess> get copyWith => _$ExpectedTokenSuccessCopyWithImpl<ExpectedTokenSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpectedTokenSuccess&&(identical(other.expectedToken, expectedToken) || other.expectedToken == expectedToken));
}


@override
int get hashCode => Object.hash(runtimeType,expectedToken);

@override
String toString() {
  return 'ExpectedTokenState.success(expectedToken: $expectedToken)';
}


}

/// @nodoc
abstract mixin class $ExpectedTokenSuccessCopyWith<$Res> implements $ExpectedTokenStateCopyWith<$Res> {
  factory $ExpectedTokenSuccessCopyWith(ExpectedTokenSuccess value, $Res Function(ExpectedTokenSuccess) _then) = _$ExpectedTokenSuccessCopyWithImpl;
@useResult
$Res call({
 ExpectedTokenModel expectedToken
});




}
/// @nodoc
class _$ExpectedTokenSuccessCopyWithImpl<$Res>
    implements $ExpectedTokenSuccessCopyWith<$Res> {
  _$ExpectedTokenSuccessCopyWithImpl(this._self, this._then);

  final ExpectedTokenSuccess _self;
  final $Res Function(ExpectedTokenSuccess) _then;

/// Create a copy of ExpectedTokenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? expectedToken = null,}) {
  return _then(ExpectedTokenSuccess(
null == expectedToken ? _self.expectedToken : expectedToken // ignore: cast_nullable_to_non_nullable
as ExpectedTokenModel,
  ));
}


}

/// @nodoc


class ExpectedTokenError implements ExpectedTokenState {
  const ExpectedTokenError(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of ExpectedTokenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpectedTokenErrorCopyWith<ExpectedTokenError> get copyWith => _$ExpectedTokenErrorCopyWithImpl<ExpectedTokenError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpectedTokenError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'ExpectedTokenState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ExpectedTokenErrorCopyWith<$Res> implements $ExpectedTokenStateCopyWith<$Res> {
  factory $ExpectedTokenErrorCopyWith(ExpectedTokenError value, $Res Function(ExpectedTokenError) _then) = _$ExpectedTokenErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$ExpectedTokenErrorCopyWithImpl<$Res>
    implements $ExpectedTokenErrorCopyWith<$Res> {
  _$ExpectedTokenErrorCopyWithImpl(this._self, this._then);

  final ExpectedTokenError _self;
  final $Res Function(ExpectedTokenError) _then;

/// Create a copy of ExpectedTokenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(ExpectedTokenError(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
