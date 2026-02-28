// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_late_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarkLateEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkLateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkLateEvent()';
}


}

/// @nodoc
class $MarkLateEventCopyWith<$Res>  {
$MarkLateEventCopyWith(MarkLateEvent _, $Res Function(MarkLateEvent) __);
}


/// Adds pattern-matching-related methods to [MarkLateEvent].
extension MarkLateEventPatterns on MarkLateEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _MarkingLate value)?  markingLate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _MarkingLate() when markingLate != null:
return markingLate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _MarkingLate value)  markingLate,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _MarkingLate():
return markingLate(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _MarkingLate value)?  markingLate,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _MarkingLate() when markingLate != null:
return markingLate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int appointmentId)?  markingLate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _MarkingLate() when markingLate != null:
return markingLate(_that.appointmentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int appointmentId)  markingLate,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _MarkingLate():
return markingLate(_that.appointmentId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int appointmentId)?  markingLate,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _MarkingLate() when markingLate != null:
return markingLate(_that.appointmentId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MarkLateEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkLateEvent.started()';
}


}




/// @nodoc


class _MarkingLate implements MarkLateEvent {
  const _MarkingLate(this.appointmentId);
  

 final  int appointmentId;

/// Create a copy of MarkLateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkingLateCopyWith<_MarkingLate> get copyWith => __$MarkingLateCopyWithImpl<_MarkingLate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarkingLate&&(identical(other.appointmentId, appointmentId) || other.appointmentId == appointmentId));
}


@override
int get hashCode => Object.hash(runtimeType,appointmentId);

@override
String toString() {
  return 'MarkLateEvent.markingLate(appointmentId: $appointmentId)';
}


}

/// @nodoc
abstract mixin class _$MarkingLateCopyWith<$Res> implements $MarkLateEventCopyWith<$Res> {
  factory _$MarkingLateCopyWith(_MarkingLate value, $Res Function(_MarkingLate) _then) = __$MarkingLateCopyWithImpl;
@useResult
$Res call({
 int appointmentId
});




}
/// @nodoc
class __$MarkingLateCopyWithImpl<$Res>
    implements _$MarkingLateCopyWith<$Res> {
  __$MarkingLateCopyWithImpl(this._self, this._then);

  final _MarkingLate _self;
  final $Res Function(_MarkingLate) _then;

/// Create a copy of MarkLateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointmentId = null,}) {
  return _then(_MarkingLate(
null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MarkLateState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkLateState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkLateState()';
}


}

/// @nodoc
class $MarkLateStateCopyWith<$Res>  {
$MarkLateStateCopyWith(MarkLateState _, $Res Function(MarkLateState) __);
}


/// Adds pattern-matching-related methods to [MarkLateState].
extension MarkLateStatePatterns on MarkLateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MarkLateInitial value)?  initial,TResult Function( MarkLateLoading value)?  loading,TResult Function( MarkLateSuccess value)?  success,TResult Function( MarkLateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MarkLateInitial() when initial != null:
return initial(_that);case MarkLateLoading() when loading != null:
return loading(_that);case MarkLateSuccess() when success != null:
return success(_that);case MarkLateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MarkLateInitial value)  initial,required TResult Function( MarkLateLoading value)  loading,required TResult Function( MarkLateSuccess value)  success,required TResult Function( MarkLateError value)  error,}){
final _that = this;
switch (_that) {
case MarkLateInitial():
return initial(_that);case MarkLateLoading():
return loading(_that);case MarkLateSuccess():
return success(_that);case MarkLateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MarkLateInitial value)?  initial,TResult? Function( MarkLateLoading value)?  loading,TResult? Function( MarkLateSuccess value)?  success,TResult? Function( MarkLateError value)?  error,}){
final _that = this;
switch (_that) {
case MarkLateInitial() when initial != null:
return initial(_that);case MarkLateLoading() when loading != null:
return loading(_that);case MarkLateSuccess() when success != null:
return success(_that);case MarkLateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( LateMarkingResponseModel response)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MarkLateInitial() when initial != null:
return initial();case MarkLateLoading() when loading != null:
return loading();case MarkLateSuccess() when success != null:
return success(_that.response);case MarkLateError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( LateMarkingResponseModel response)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case MarkLateInitial():
return initial();case MarkLateLoading():
return loading();case MarkLateSuccess():
return success(_that.response);case MarkLateError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( LateMarkingResponseModel response)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case MarkLateInitial() when initial != null:
return initial();case MarkLateLoading() when loading != null:
return loading();case MarkLateSuccess() when success != null:
return success(_that.response);case MarkLateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class MarkLateInitial implements MarkLateState {
  const MarkLateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkLateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkLateState.initial()';
}


}




/// @nodoc


class MarkLateLoading implements MarkLateState {
  const MarkLateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkLateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkLateState.loading()';
}


}




/// @nodoc


class MarkLateSuccess implements MarkLateState {
  const MarkLateSuccess(this.response);
  

 final  LateMarkingResponseModel response;

/// Create a copy of MarkLateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkLateSuccessCopyWith<MarkLateSuccess> get copyWith => _$MarkLateSuccessCopyWithImpl<MarkLateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkLateSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'MarkLateState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class $MarkLateSuccessCopyWith<$Res> implements $MarkLateStateCopyWith<$Res> {
  factory $MarkLateSuccessCopyWith(MarkLateSuccess value, $Res Function(MarkLateSuccess) _then) = _$MarkLateSuccessCopyWithImpl;
@useResult
$Res call({
 LateMarkingResponseModel response
});




}
/// @nodoc
class _$MarkLateSuccessCopyWithImpl<$Res>
    implements $MarkLateSuccessCopyWith<$Res> {
  _$MarkLateSuccessCopyWithImpl(this._self, this._then);

  final MarkLateSuccess _self;
  final $Res Function(MarkLateSuccess) _then;

/// Create a copy of MarkLateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(MarkLateSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as LateMarkingResponseModel,
  ));
}


}

/// @nodoc


class MarkLateError implements MarkLateState {
  const MarkLateError(this.message);
  

 final  String message;

/// Create a copy of MarkLateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkLateErrorCopyWith<MarkLateError> get copyWith => _$MarkLateErrorCopyWithImpl<MarkLateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkLateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MarkLateState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $MarkLateErrorCopyWith<$Res> implements $MarkLateStateCopyWith<$Res> {
  factory $MarkLateErrorCopyWith(MarkLateError value, $Res Function(MarkLateError) _then) = _$MarkLateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MarkLateErrorCopyWithImpl<$Res>
    implements $MarkLateErrorCopyWith<$Res> {
  _$MarkLateErrorCopyWithImpl(this._self, this._then);

  final MarkLateError _self;
  final $Res Function(MarkLateError) _then;

/// Create a copy of MarkLateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MarkLateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
