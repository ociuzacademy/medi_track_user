// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_donor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IsDonorState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsDonorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IsDonorState()';
}


}

/// @nodoc
class $IsDonorStateCopyWith<$Res>  {
$IsDonorStateCopyWith(IsDonorState _, $Res Function(IsDonorState) __);
}


/// Adds pattern-matching-related methods to [IsDonorState].
extension IsDonorStatePatterns on IsDonorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IsDonorInitial value)?  initial,TResult Function( IsDonorLoading value)?  loading,TResult Function( IsDonorSuccess value)?  success,TResult Function( IsDonorError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IsDonorInitial() when initial != null:
return initial(_that);case IsDonorLoading() when loading != null:
return loading(_that);case IsDonorSuccess() when success != null:
return success(_that);case IsDonorError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IsDonorInitial value)  initial,required TResult Function( IsDonorLoading value)  loading,required TResult Function( IsDonorSuccess value)  success,required TResult Function( IsDonorError value)  error,}){
final _that = this;
switch (_that) {
case IsDonorInitial():
return initial(_that);case IsDonorLoading():
return loading(_that);case IsDonorSuccess():
return success(_that);case IsDonorError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IsDonorInitial value)?  initial,TResult? Function( IsDonorLoading value)?  loading,TResult? Function( IsDonorSuccess value)?  success,TResult? Function( IsDonorError value)?  error,}){
final _that = this;
switch (_that) {
case IsDonorInitial() when initial != null:
return initial(_that);case IsDonorLoading() when loading != null:
return loading(_that);case IsDonorSuccess() when success != null:
return success(_that);case IsDonorError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( bool isDonor)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IsDonorInitial() when initial != null:
return initial();case IsDonorLoading() when loading != null:
return loading();case IsDonorSuccess() when success != null:
return success(_that.isDonor);case IsDonorError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( bool isDonor)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case IsDonorInitial():
return initial();case IsDonorLoading():
return loading();case IsDonorSuccess():
return success(_that.isDonor);case IsDonorError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( bool isDonor)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case IsDonorInitial() when initial != null:
return initial();case IsDonorLoading() when loading != null:
return loading();case IsDonorSuccess() when success != null:
return success(_that.isDonor);case IsDonorError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class IsDonorInitial implements IsDonorState {
  const IsDonorInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsDonorInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IsDonorState.initial()';
}


}




/// @nodoc


class IsDonorLoading implements IsDonorState {
  const IsDonorLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsDonorLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IsDonorState.loading()';
}


}




/// @nodoc


class IsDonorSuccess implements IsDonorState {
  const IsDonorSuccess(this.isDonor);
  

 final  bool isDonor;

/// Create a copy of IsDonorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IsDonorSuccessCopyWith<IsDonorSuccess> get copyWith => _$IsDonorSuccessCopyWithImpl<IsDonorSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsDonorSuccess&&(identical(other.isDonor, isDonor) || other.isDonor == isDonor));
}


@override
int get hashCode => Object.hash(runtimeType,isDonor);

@override
String toString() {
  return 'IsDonorState.success(isDonor: $isDonor)';
}


}

/// @nodoc
abstract mixin class $IsDonorSuccessCopyWith<$Res> implements $IsDonorStateCopyWith<$Res> {
  factory $IsDonorSuccessCopyWith(IsDonorSuccess value, $Res Function(IsDonorSuccess) _then) = _$IsDonorSuccessCopyWithImpl;
@useResult
$Res call({
 bool isDonor
});




}
/// @nodoc
class _$IsDonorSuccessCopyWithImpl<$Res>
    implements $IsDonorSuccessCopyWith<$Res> {
  _$IsDonorSuccessCopyWithImpl(this._self, this._then);

  final IsDonorSuccess _self;
  final $Res Function(IsDonorSuccess) _then;

/// Create a copy of IsDonorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDonor = null,}) {
  return _then(IsDonorSuccess(
null == isDonor ? _self.isDonor : isDonor // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class IsDonorError implements IsDonorState {
  const IsDonorError(this.message);
  

 final  String message;

/// Create a copy of IsDonorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IsDonorErrorCopyWith<IsDonorError> get copyWith => _$IsDonorErrorCopyWithImpl<IsDonorError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsDonorError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'IsDonorState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $IsDonorErrorCopyWith<$Res> implements $IsDonorStateCopyWith<$Res> {
  factory $IsDonorErrorCopyWith(IsDonorError value, $Res Function(IsDonorError) _then) = _$IsDonorErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$IsDonorErrorCopyWithImpl<$Res>
    implements $IsDonorErrorCopyWith<$Res> {
  _$IsDonorErrorCopyWithImpl(this._self, this._then);

  final IsDonorError _self;
  final $Res Function(IsDonorError) _then;

/// Create a copy of IsDonorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(IsDonorError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
