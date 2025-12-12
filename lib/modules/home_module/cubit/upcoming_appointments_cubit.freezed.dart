// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_appointments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpcomingAppointmentsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpcomingAppointmentsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpcomingAppointmentsState()';
}


}

/// @nodoc
class $UpcomingAppointmentsStateCopyWith<$Res>  {
$UpcomingAppointmentsStateCopyWith(UpcomingAppointmentsState _, $Res Function(UpcomingAppointmentsState) __);
}


/// Adds pattern-matching-related methods to [UpcomingAppointmentsState].
extension UpcomingAppointmentsStatePatterns on UpcomingAppointmentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpcomingAppointmentsInitial value)?  initial,TResult Function( UpcomingAppointmentsLoading value)?  loading,TResult Function( UpcomingAppointmentsSuccess value)?  success,TResult Function( UpcomingAppointmentsEmpty value)?  empty,TResult Function( UpcomingAppointmentsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpcomingAppointmentsInitial() when initial != null:
return initial(_that);case UpcomingAppointmentsLoading() when loading != null:
return loading(_that);case UpcomingAppointmentsSuccess() when success != null:
return success(_that);case UpcomingAppointmentsEmpty() when empty != null:
return empty(_that);case UpcomingAppointmentsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpcomingAppointmentsInitial value)  initial,required TResult Function( UpcomingAppointmentsLoading value)  loading,required TResult Function( UpcomingAppointmentsSuccess value)  success,required TResult Function( UpcomingAppointmentsEmpty value)  empty,required TResult Function( UpcomingAppointmentsError value)  error,}){
final _that = this;
switch (_that) {
case UpcomingAppointmentsInitial():
return initial(_that);case UpcomingAppointmentsLoading():
return loading(_that);case UpcomingAppointmentsSuccess():
return success(_that);case UpcomingAppointmentsEmpty():
return empty(_that);case UpcomingAppointmentsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpcomingAppointmentsInitial value)?  initial,TResult? Function( UpcomingAppointmentsLoading value)?  loading,TResult? Function( UpcomingAppointmentsSuccess value)?  success,TResult? Function( UpcomingAppointmentsEmpty value)?  empty,TResult? Function( UpcomingAppointmentsError value)?  error,}){
final _that = this;
switch (_that) {
case UpcomingAppointmentsInitial() when initial != null:
return initial(_that);case UpcomingAppointmentsLoading() when loading != null:
return loading(_that);case UpcomingAppointmentsSuccess() when success != null:
return success(_that);case UpcomingAppointmentsEmpty() when empty != null:
return empty(_that);case UpcomingAppointmentsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UpcomingAppointmentsModel data)?  success,TResult Function()?  empty,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpcomingAppointmentsInitial() when initial != null:
return initial();case UpcomingAppointmentsLoading() when loading != null:
return loading();case UpcomingAppointmentsSuccess() when success != null:
return success(_that.data);case UpcomingAppointmentsEmpty() when empty != null:
return empty();case UpcomingAppointmentsError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UpcomingAppointmentsModel data)  success,required TResult Function()  empty,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case UpcomingAppointmentsInitial():
return initial();case UpcomingAppointmentsLoading():
return loading();case UpcomingAppointmentsSuccess():
return success(_that.data);case UpcomingAppointmentsEmpty():
return empty();case UpcomingAppointmentsError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UpcomingAppointmentsModel data)?  success,TResult? Function()?  empty,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case UpcomingAppointmentsInitial() when initial != null:
return initial();case UpcomingAppointmentsLoading() when loading != null:
return loading();case UpcomingAppointmentsSuccess() when success != null:
return success(_that.data);case UpcomingAppointmentsEmpty() when empty != null:
return empty();case UpcomingAppointmentsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UpcomingAppointmentsInitial implements UpcomingAppointmentsState {
  const UpcomingAppointmentsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpcomingAppointmentsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpcomingAppointmentsState.initial()';
}


}




/// @nodoc


class UpcomingAppointmentsLoading implements UpcomingAppointmentsState {
  const UpcomingAppointmentsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpcomingAppointmentsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpcomingAppointmentsState.loading()';
}


}




/// @nodoc


class UpcomingAppointmentsSuccess implements UpcomingAppointmentsState {
  const UpcomingAppointmentsSuccess({required this.data});
  

 final  UpcomingAppointmentsModel data;

/// Create a copy of UpcomingAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpcomingAppointmentsSuccessCopyWith<UpcomingAppointmentsSuccess> get copyWith => _$UpcomingAppointmentsSuccessCopyWithImpl<UpcomingAppointmentsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpcomingAppointmentsSuccess&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UpcomingAppointmentsState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $UpcomingAppointmentsSuccessCopyWith<$Res> implements $UpcomingAppointmentsStateCopyWith<$Res> {
  factory $UpcomingAppointmentsSuccessCopyWith(UpcomingAppointmentsSuccess value, $Res Function(UpcomingAppointmentsSuccess) _then) = _$UpcomingAppointmentsSuccessCopyWithImpl;
@useResult
$Res call({
 UpcomingAppointmentsModel data
});




}
/// @nodoc
class _$UpcomingAppointmentsSuccessCopyWithImpl<$Res>
    implements $UpcomingAppointmentsSuccessCopyWith<$Res> {
  _$UpcomingAppointmentsSuccessCopyWithImpl(this._self, this._then);

  final UpcomingAppointmentsSuccess _self;
  final $Res Function(UpcomingAppointmentsSuccess) _then;

/// Create a copy of UpcomingAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(UpcomingAppointmentsSuccess(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UpcomingAppointmentsModel,
  ));
}


}

/// @nodoc


class UpcomingAppointmentsEmpty implements UpcomingAppointmentsState {
  const UpcomingAppointmentsEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpcomingAppointmentsEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpcomingAppointmentsState.empty()';
}


}




/// @nodoc


class UpcomingAppointmentsError implements UpcomingAppointmentsState {
  const UpcomingAppointmentsError({required this.message});
  

 final  String message;

/// Create a copy of UpcomingAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpcomingAppointmentsErrorCopyWith<UpcomingAppointmentsError> get copyWith => _$UpcomingAppointmentsErrorCopyWithImpl<UpcomingAppointmentsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpcomingAppointmentsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UpcomingAppointmentsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UpcomingAppointmentsErrorCopyWith<$Res> implements $UpcomingAppointmentsStateCopyWith<$Res> {
  factory $UpcomingAppointmentsErrorCopyWith(UpcomingAppointmentsError value, $Res Function(UpcomingAppointmentsError) _then) = _$UpcomingAppointmentsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UpcomingAppointmentsErrorCopyWithImpl<$Res>
    implements $UpcomingAppointmentsErrorCopyWith<$Res> {
  _$UpcomingAppointmentsErrorCopyWithImpl(this._self, this._then);

  final UpcomingAppointmentsError _self;
  final $Res Function(UpcomingAppointmentsError) _then;

/// Create a copy of UpcomingAppointmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UpcomingAppointmentsError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
