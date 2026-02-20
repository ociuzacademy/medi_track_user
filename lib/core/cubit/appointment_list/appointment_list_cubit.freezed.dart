// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppointmentListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentListState()';
}


}

/// @nodoc
class $AppointmentListStateCopyWith<$Res>  {
$AppointmentListStateCopyWith(AppointmentListState _, $Res Function(AppointmentListState) __);
}


/// Adds pattern-matching-related methods to [AppointmentListState].
extension AppointmentListStatePatterns on AppointmentListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppointmentListInitial value)?  initial,TResult Function( AppointmentListLoading value)?  loading,TResult Function( AppointmentListSuccess value)?  success,TResult Function( AppointmentListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppointmentListInitial() when initial != null:
return initial(_that);case AppointmentListLoading() when loading != null:
return loading(_that);case AppointmentListSuccess() when success != null:
return success(_that);case AppointmentListError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppointmentListInitial value)  initial,required TResult Function( AppointmentListLoading value)  loading,required TResult Function( AppointmentListSuccess value)  success,required TResult Function( AppointmentListError value)  error,}){
final _that = this;
switch (_that) {
case AppointmentListInitial():
return initial(_that);case AppointmentListLoading():
return loading(_that);case AppointmentListSuccess():
return success(_that);case AppointmentListError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppointmentListInitial value)?  initial,TResult? Function( AppointmentListLoading value)?  loading,TResult? Function( AppointmentListSuccess value)?  success,TResult? Function( AppointmentListError value)?  error,}){
final _that = this;
switch (_that) {
case AppointmentListInitial() when initial != null:
return initial(_that);case AppointmentListLoading() when loading != null:
return loading(_that);case AppointmentListSuccess() when success != null:
return success(_that);case AppointmentListError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppointmentsModel appointments)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppointmentListInitial() when initial != null:
return initial();case AppointmentListLoading() when loading != null:
return loading();case AppointmentListSuccess() when success != null:
return success(_that.appointments);case AppointmentListError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppointmentsModel appointments)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AppointmentListInitial():
return initial();case AppointmentListLoading():
return loading();case AppointmentListSuccess():
return success(_that.appointments);case AppointmentListError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppointmentsModel appointments)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AppointmentListInitial() when initial != null:
return initial();case AppointmentListLoading() when loading != null:
return loading();case AppointmentListSuccess() when success != null:
return success(_that.appointments);case AppointmentListError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AppointmentListInitial implements AppointmentListState {
  const AppointmentListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentListState.initial()';
}


}




/// @nodoc


class AppointmentListLoading implements AppointmentListState {
  const AppointmentListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentListState.loading()';
}


}




/// @nodoc


class AppointmentListSuccess implements AppointmentListState {
  const AppointmentListSuccess({required this.appointments});
  

 final  AppointmentsModel appointments;

/// Create a copy of AppointmentListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentListSuccessCopyWith<AppointmentListSuccess> get copyWith => _$AppointmentListSuccessCopyWithImpl<AppointmentListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentListSuccess&&(identical(other.appointments, appointments) || other.appointments == appointments));
}


@override
int get hashCode => Object.hash(runtimeType,appointments);

@override
String toString() {
  return 'AppointmentListState.success(appointments: $appointments)';
}


}

/// @nodoc
abstract mixin class $AppointmentListSuccessCopyWith<$Res> implements $AppointmentListStateCopyWith<$Res> {
  factory $AppointmentListSuccessCopyWith(AppointmentListSuccess value, $Res Function(AppointmentListSuccess) _then) = _$AppointmentListSuccessCopyWithImpl;
@useResult
$Res call({
 AppointmentsModel appointments
});




}
/// @nodoc
class _$AppointmentListSuccessCopyWithImpl<$Res>
    implements $AppointmentListSuccessCopyWith<$Res> {
  _$AppointmentListSuccessCopyWithImpl(this._self, this._then);

  final AppointmentListSuccess _self;
  final $Res Function(AppointmentListSuccess) _then;

/// Create a copy of AppointmentListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointments = null,}) {
  return _then(AppointmentListSuccess(
appointments: null == appointments ? _self.appointments : appointments // ignore: cast_nullable_to_non_nullable
as AppointmentsModel,
  ));
}


}

/// @nodoc


class AppointmentListError implements AppointmentListState {
  const AppointmentListError({required this.message});
  

 final  String message;

/// Create a copy of AppointmentListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentListErrorCopyWith<AppointmentListError> get copyWith => _$AppointmentListErrorCopyWithImpl<AppointmentListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentListError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppointmentListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AppointmentListErrorCopyWith<$Res> implements $AppointmentListStateCopyWith<$Res> {
  factory $AppointmentListErrorCopyWith(AppointmentListError value, $Res Function(AppointmentListError) _then) = _$AppointmentListErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AppointmentListErrorCopyWithImpl<$Res>
    implements $AppointmentListErrorCopyWith<$Res> {
  _$AppointmentListErrorCopyWithImpl(this._self, this._then);

  final AppointmentListError _self;
  final $Res Function(AppointmentListError) _then;

/// Create a copy of AppointmentListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AppointmentListError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
