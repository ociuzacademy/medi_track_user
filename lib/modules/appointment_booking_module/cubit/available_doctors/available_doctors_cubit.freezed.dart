// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_doctors_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AvailableDoctorsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableDoctorsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AvailableDoctorsState()';
}


}

/// @nodoc
class $AvailableDoctorsStateCopyWith<$Res>  {
$AvailableDoctorsStateCopyWith(AvailableDoctorsState _, $Res Function(AvailableDoctorsState) __);
}


/// Adds pattern-matching-related methods to [AvailableDoctorsState].
extension AvailableDoctorsStatePatterns on AvailableDoctorsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AvailableDoctorsInitial value)?  initial,TResult Function( AvailableDoctorsLoading value)?  loading,TResult Function( AvailableDoctorsSuccess value)?  success,TResult Function( AvailableDoctorsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AvailableDoctorsInitial() when initial != null:
return initial(_that);case AvailableDoctorsLoading() when loading != null:
return loading(_that);case AvailableDoctorsSuccess() when success != null:
return success(_that);case AvailableDoctorsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AvailableDoctorsInitial value)  initial,required TResult Function( AvailableDoctorsLoading value)  loading,required TResult Function( AvailableDoctorsSuccess value)  success,required TResult Function( AvailableDoctorsError value)  error,}){
final _that = this;
switch (_that) {
case AvailableDoctorsInitial():
return initial(_that);case AvailableDoctorsLoading():
return loading(_that);case AvailableDoctorsSuccess():
return success(_that);case AvailableDoctorsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AvailableDoctorsInitial value)?  initial,TResult? Function( AvailableDoctorsLoading value)?  loading,TResult? Function( AvailableDoctorsSuccess value)?  success,TResult? Function( AvailableDoctorsError value)?  error,}){
final _that = this;
switch (_that) {
case AvailableDoctorsInitial() when initial != null:
return initial(_that);case AvailableDoctorsLoading() when loading != null:
return loading(_that);case AvailableDoctorsSuccess() when success != null:
return success(_that);case AvailableDoctorsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AvailableDoctorsModel availableDoctors)?  success,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AvailableDoctorsInitial() when initial != null:
return initial();case AvailableDoctorsLoading() when loading != null:
return loading();case AvailableDoctorsSuccess() when success != null:
return success(_that.availableDoctors);case AvailableDoctorsError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AvailableDoctorsModel availableDoctors)  success,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case AvailableDoctorsInitial():
return initial();case AvailableDoctorsLoading():
return loading();case AvailableDoctorsSuccess():
return success(_that.availableDoctors);case AvailableDoctorsError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AvailableDoctorsModel availableDoctors)?  success,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case AvailableDoctorsInitial() when initial != null:
return initial();case AvailableDoctorsLoading() when loading != null:
return loading();case AvailableDoctorsSuccess() when success != null:
return success(_that.availableDoctors);case AvailableDoctorsError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class AvailableDoctorsInitial implements AvailableDoctorsState {
  const AvailableDoctorsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableDoctorsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AvailableDoctorsState.initial()';
}


}




/// @nodoc


class AvailableDoctorsLoading implements AvailableDoctorsState {
  const AvailableDoctorsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableDoctorsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AvailableDoctorsState.loading()';
}


}




/// @nodoc


class AvailableDoctorsSuccess implements AvailableDoctorsState {
  const AvailableDoctorsSuccess({required this.availableDoctors});
  

 final  AvailableDoctorsModel availableDoctors;

/// Create a copy of AvailableDoctorsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableDoctorsSuccessCopyWith<AvailableDoctorsSuccess> get copyWith => _$AvailableDoctorsSuccessCopyWithImpl<AvailableDoctorsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableDoctorsSuccess&&(identical(other.availableDoctors, availableDoctors) || other.availableDoctors == availableDoctors));
}


@override
int get hashCode => Object.hash(runtimeType,availableDoctors);

@override
String toString() {
  return 'AvailableDoctorsState.success(availableDoctors: $availableDoctors)';
}


}

/// @nodoc
abstract mixin class $AvailableDoctorsSuccessCopyWith<$Res> implements $AvailableDoctorsStateCopyWith<$Res> {
  factory $AvailableDoctorsSuccessCopyWith(AvailableDoctorsSuccess value, $Res Function(AvailableDoctorsSuccess) _then) = _$AvailableDoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 AvailableDoctorsModel availableDoctors
});




}
/// @nodoc
class _$AvailableDoctorsSuccessCopyWithImpl<$Res>
    implements $AvailableDoctorsSuccessCopyWith<$Res> {
  _$AvailableDoctorsSuccessCopyWithImpl(this._self, this._then);

  final AvailableDoctorsSuccess _self;
  final $Res Function(AvailableDoctorsSuccess) _then;

/// Create a copy of AvailableDoctorsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? availableDoctors = null,}) {
  return _then(AvailableDoctorsSuccess(
availableDoctors: null == availableDoctors ? _self.availableDoctors : availableDoctors // ignore: cast_nullable_to_non_nullable
as AvailableDoctorsModel,
  ));
}


}

/// @nodoc


class AvailableDoctorsError implements AvailableDoctorsState {
  const AvailableDoctorsError({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of AvailableDoctorsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableDoctorsErrorCopyWith<AvailableDoctorsError> get copyWith => _$AvailableDoctorsErrorCopyWithImpl<AvailableDoctorsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableDoctorsError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AvailableDoctorsState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AvailableDoctorsErrorCopyWith<$Res> implements $AvailableDoctorsStateCopyWith<$Res> {
  factory $AvailableDoctorsErrorCopyWith(AvailableDoctorsError value, $Res Function(AvailableDoctorsError) _then) = _$AvailableDoctorsErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$AvailableDoctorsErrorCopyWithImpl<$Res>
    implements $AvailableDoctorsErrorCopyWith<$Res> {
  _$AvailableDoctorsErrorCopyWithImpl(this._self, this._then);

  final AvailableDoctorsError _self;
  final $Res Function(AvailableDoctorsError) _then;

/// Create a copy of AvailableDoctorsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(AvailableDoctorsError(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
