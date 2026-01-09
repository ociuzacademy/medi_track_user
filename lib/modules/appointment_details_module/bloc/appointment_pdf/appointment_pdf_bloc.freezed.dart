// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_pdf_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppointmentPdfEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPdfEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentPdfEvent()';
}


}

/// @nodoc
class $AppointmentPdfEventCopyWith<$Res>  {
$AppointmentPdfEventCopyWith(AppointmentPdfEvent _, $Res Function(AppointmentPdfEvent) __);
}


/// Adds pattern-matching-related methods to [AppointmentPdfEvent].
extension AppointmentPdfEventPatterns on AppointmentPdfEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GeneratingAppointmentPdf value)?  generatingAppointmentPdf,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GeneratingAppointmentPdf() when generatingAppointmentPdf != null:
return generatingAppointmentPdf(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GeneratingAppointmentPdf value)  generatingAppointmentPdf,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GeneratingAppointmentPdf():
return generatingAppointmentPdf(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GeneratingAppointmentPdf value)?  generatingAppointmentPdf,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GeneratingAppointmentPdf() when generatingAppointmentPdf != null:
return generatingAppointmentPdf(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int appointmentId)?  generatingAppointmentPdf,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GeneratingAppointmentPdf() when generatingAppointmentPdf != null:
return generatingAppointmentPdf(_that.appointmentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int appointmentId)  generatingAppointmentPdf,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GeneratingAppointmentPdf():
return generatingAppointmentPdf(_that.appointmentId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int appointmentId)?  generatingAppointmentPdf,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GeneratingAppointmentPdf() when generatingAppointmentPdf != null:
return generatingAppointmentPdf(_that.appointmentId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AppointmentPdfEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentPdfEvent.started()';
}


}




/// @nodoc


class _GeneratingAppointmentPdf implements AppointmentPdfEvent {
  const _GeneratingAppointmentPdf(this.appointmentId);
  

 final  int appointmentId;

/// Create a copy of AppointmentPdfEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratingAppointmentPdfCopyWith<_GeneratingAppointmentPdf> get copyWith => __$GeneratingAppointmentPdfCopyWithImpl<_GeneratingAppointmentPdf>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneratingAppointmentPdf&&(identical(other.appointmentId, appointmentId) || other.appointmentId == appointmentId));
}


@override
int get hashCode => Object.hash(runtimeType,appointmentId);

@override
String toString() {
  return 'AppointmentPdfEvent.generatingAppointmentPdf(appointmentId: $appointmentId)';
}


}

/// @nodoc
abstract mixin class _$GeneratingAppointmentPdfCopyWith<$Res> implements $AppointmentPdfEventCopyWith<$Res> {
  factory _$GeneratingAppointmentPdfCopyWith(_GeneratingAppointmentPdf value, $Res Function(_GeneratingAppointmentPdf) _then) = __$GeneratingAppointmentPdfCopyWithImpl;
@useResult
$Res call({
 int appointmentId
});




}
/// @nodoc
class __$GeneratingAppointmentPdfCopyWithImpl<$Res>
    implements _$GeneratingAppointmentPdfCopyWith<$Res> {
  __$GeneratingAppointmentPdfCopyWithImpl(this._self, this._then);

  final _GeneratingAppointmentPdf _self;
  final $Res Function(_GeneratingAppointmentPdf) _then;

/// Create a copy of AppointmentPdfEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointmentId = null,}) {
  return _then(_GeneratingAppointmentPdf(
null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AppointmentPdfState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPdfState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentPdfState()';
}


}

/// @nodoc
class $AppointmentPdfStateCopyWith<$Res>  {
$AppointmentPdfStateCopyWith(AppointmentPdfState _, $Res Function(AppointmentPdfState) __);
}


/// Adds pattern-matching-related methods to [AppointmentPdfState].
extension AppointmentPdfStatePatterns on AppointmentPdfState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppointmentPdfInitial value)?  initial,TResult Function( AppointmentPdfLoading value)?  loading,TResult Function( AppointmentPdfSuccess value)?  success,TResult Function( AppointmentPdfError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppointmentPdfInitial() when initial != null:
return initial(_that);case AppointmentPdfLoading() when loading != null:
return loading(_that);case AppointmentPdfSuccess() when success != null:
return success(_that);case AppointmentPdfError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppointmentPdfInitial value)  initial,required TResult Function( AppointmentPdfLoading value)  loading,required TResult Function( AppointmentPdfSuccess value)  success,required TResult Function( AppointmentPdfError value)  error,}){
final _that = this;
switch (_that) {
case AppointmentPdfInitial():
return initial(_that);case AppointmentPdfLoading():
return loading(_that);case AppointmentPdfSuccess():
return success(_that);case AppointmentPdfError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppointmentPdfInitial value)?  initial,TResult? Function( AppointmentPdfLoading value)?  loading,TResult? Function( AppointmentPdfSuccess value)?  success,TResult? Function( AppointmentPdfError value)?  error,}){
final _that = this;
switch (_that) {
case AppointmentPdfInitial() when initial != null:
return initial(_that);case AppointmentPdfLoading() when loading != null:
return loading(_that);case AppointmentPdfSuccess() when success != null:
return success(_that);case AppointmentPdfError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppointmentPdfInitial() when initial != null:
return initial();case AppointmentPdfLoading() when loading != null:
return loading();case AppointmentPdfSuccess() when success != null:
return success();case AppointmentPdfError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AppointmentPdfInitial():
return initial();case AppointmentPdfLoading():
return loading();case AppointmentPdfSuccess():
return success();case AppointmentPdfError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AppointmentPdfInitial() when initial != null:
return initial();case AppointmentPdfLoading() when loading != null:
return loading();case AppointmentPdfSuccess() when success != null:
return success();case AppointmentPdfError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AppointmentPdfInitial implements AppointmentPdfState {
  const AppointmentPdfInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPdfInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentPdfState.initial()';
}


}




/// @nodoc


class AppointmentPdfLoading implements AppointmentPdfState {
  const AppointmentPdfLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPdfLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentPdfState.loading()';
}


}




/// @nodoc


class AppointmentPdfSuccess implements AppointmentPdfState {
  const AppointmentPdfSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPdfSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentPdfState.success()';
}


}




/// @nodoc


class AppointmentPdfError implements AppointmentPdfState {
  const AppointmentPdfError(this.message);
  

 final  String message;

/// Create a copy of AppointmentPdfState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentPdfErrorCopyWith<AppointmentPdfError> get copyWith => _$AppointmentPdfErrorCopyWithImpl<AppointmentPdfError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentPdfError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppointmentPdfState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AppointmentPdfErrorCopyWith<$Res> implements $AppointmentPdfStateCopyWith<$Res> {
  factory $AppointmentPdfErrorCopyWith(AppointmentPdfError value, $Res Function(AppointmentPdfError) _then) = _$AppointmentPdfErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AppointmentPdfErrorCopyWithImpl<$Res>
    implements $AppointmentPdfErrorCopyWith<$Res> {
  _$AppointmentPdfErrorCopyWithImpl(this._self, this._then);

  final AppointmentPdfError _self;
  final $Res Function(AppointmentPdfError) _then;

/// Create a copy of AppointmentPdfState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AppointmentPdfError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
