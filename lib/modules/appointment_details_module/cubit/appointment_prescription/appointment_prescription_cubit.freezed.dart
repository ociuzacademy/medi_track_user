// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_prescription_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppointmentPrescriptionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPrescriptionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentPrescriptionState()';
}


}

/// @nodoc
class $AppointmentPrescriptionStateCopyWith<$Res>  {
$AppointmentPrescriptionStateCopyWith(AppointmentPrescriptionState _, $Res Function(AppointmentPrescriptionState) __);
}


/// Adds pattern-matching-related methods to [AppointmentPrescriptionState].
extension AppointmentPrescriptionStatePatterns on AppointmentPrescriptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppointmentPrescriptionInitial value)?  initial,TResult Function( AppointmentPrescriptionLoading value)?  loading,TResult Function( AppointmentPrescriptionSuccess value)?  success,TResult Function( AppointmentPrescriptionError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppointmentPrescriptionInitial() when initial != null:
return initial(_that);case AppointmentPrescriptionLoading() when loading != null:
return loading(_that);case AppointmentPrescriptionSuccess() when success != null:
return success(_that);case AppointmentPrescriptionError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppointmentPrescriptionInitial value)  initial,required TResult Function( AppointmentPrescriptionLoading value)  loading,required TResult Function( AppointmentPrescriptionSuccess value)  success,required TResult Function( AppointmentPrescriptionError value)  error,}){
final _that = this;
switch (_that) {
case AppointmentPrescriptionInitial():
return initial(_that);case AppointmentPrescriptionLoading():
return loading(_that);case AppointmentPrescriptionSuccess():
return success(_that);case AppointmentPrescriptionError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppointmentPrescriptionInitial value)?  initial,TResult? Function( AppointmentPrescriptionLoading value)?  loading,TResult? Function( AppointmentPrescriptionSuccess value)?  success,TResult? Function( AppointmentPrescriptionError value)?  error,}){
final _that = this;
switch (_that) {
case AppointmentPrescriptionInitial() when initial != null:
return initial(_that);case AppointmentPrescriptionLoading() when loading != null:
return loading(_that);case AppointmentPrescriptionSuccess() when success != null:
return success(_that);case AppointmentPrescriptionError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppointmentPrescriptionModel data)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppointmentPrescriptionInitial() when initial != null:
return initial();case AppointmentPrescriptionLoading() when loading != null:
return loading();case AppointmentPrescriptionSuccess() when success != null:
return success(_that.data);case AppointmentPrescriptionError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppointmentPrescriptionModel data)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AppointmentPrescriptionInitial():
return initial();case AppointmentPrescriptionLoading():
return loading();case AppointmentPrescriptionSuccess():
return success(_that.data);case AppointmentPrescriptionError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppointmentPrescriptionModel data)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AppointmentPrescriptionInitial() when initial != null:
return initial();case AppointmentPrescriptionLoading() when loading != null:
return loading();case AppointmentPrescriptionSuccess() when success != null:
return success(_that.data);case AppointmentPrescriptionError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AppointmentPrescriptionInitial implements AppointmentPrescriptionState {
  const AppointmentPrescriptionInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPrescriptionInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentPrescriptionState.initial()';
}


}




/// @nodoc


class AppointmentPrescriptionLoading implements AppointmentPrescriptionState {
  const AppointmentPrescriptionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPrescriptionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentPrescriptionState.loading()';
}


}




/// @nodoc


class AppointmentPrescriptionSuccess implements AppointmentPrescriptionState {
  const AppointmentPrescriptionSuccess(this.data);
  

 final  AppointmentPrescriptionModel data;

/// Create a copy of AppointmentPrescriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentPrescriptionSuccessCopyWith<AppointmentPrescriptionSuccess> get copyWith => _$AppointmentPrescriptionSuccessCopyWithImpl<AppointmentPrescriptionSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPrescriptionSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AppointmentPrescriptionState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $AppointmentPrescriptionSuccessCopyWith<$Res> implements $AppointmentPrescriptionStateCopyWith<$Res> {
  factory $AppointmentPrescriptionSuccessCopyWith(AppointmentPrescriptionSuccess value, $Res Function(AppointmentPrescriptionSuccess) _then) = _$AppointmentPrescriptionSuccessCopyWithImpl;
@useResult
$Res call({
 AppointmentPrescriptionModel data
});




}
/// @nodoc
class _$AppointmentPrescriptionSuccessCopyWithImpl<$Res>
    implements $AppointmentPrescriptionSuccessCopyWith<$Res> {
  _$AppointmentPrescriptionSuccessCopyWithImpl(this._self, this._then);

  final AppointmentPrescriptionSuccess _self;
  final $Res Function(AppointmentPrescriptionSuccess) _then;

/// Create a copy of AppointmentPrescriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(AppointmentPrescriptionSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AppointmentPrescriptionModel,
  ));
}


}

/// @nodoc


class AppointmentPrescriptionError implements AppointmentPrescriptionState {
  const AppointmentPrescriptionError(this.message);
  

 final  String message;

/// Create a copy of AppointmentPrescriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentPrescriptionErrorCopyWith<AppointmentPrescriptionError> get copyWith => _$AppointmentPrescriptionErrorCopyWithImpl<AppointmentPrescriptionError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPrescriptionError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppointmentPrescriptionState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AppointmentPrescriptionErrorCopyWith<$Res> implements $AppointmentPrescriptionStateCopyWith<$Res> {
  factory $AppointmentPrescriptionErrorCopyWith(AppointmentPrescriptionError value, $Res Function(AppointmentPrescriptionError) _then) = _$AppointmentPrescriptionErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AppointmentPrescriptionErrorCopyWithImpl<$Res>
    implements $AppointmentPrescriptionErrorCopyWith<$Res> {
  _$AppointmentPrescriptionErrorCopyWithImpl(this._self, this._then);

  final AppointmentPrescriptionError _self;
  final $Res Function(AppointmentPrescriptionError) _then;

/// Create a copy of AppointmentPrescriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AppointmentPrescriptionError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
