// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_prescription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendPrescriptionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendPrescriptionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendPrescriptionEvent()';
}


}

/// @nodoc
class $SendPrescriptionEventCopyWith<$Res>  {
$SendPrescriptionEventCopyWith(SendPrescriptionEvent _, $Res Function(SendPrescriptionEvent) __);
}


/// Adds pattern-matching-related methods to [SendPrescriptionEvent].
extension SendPrescriptionEventPatterns on SendPrescriptionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GeneratingPrescription value)?  generatingPrescription,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GeneratingPrescription() when generatingPrescription != null:
return generatingPrescription(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GeneratingPrescription value)  generatingPrescription,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GeneratingPrescription():
return generatingPrescription(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GeneratingPrescription value)?  generatingPrescription,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GeneratingPrescription() when generatingPrescription != null:
return generatingPrescription(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( PrescriptionDetailsModel prescriptionData)?  generatingPrescription,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GeneratingPrescription() when generatingPrescription != null:
return generatingPrescription(_that.prescriptionData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( PrescriptionDetailsModel prescriptionData)  generatingPrescription,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GeneratingPrescription():
return generatingPrescription(_that.prescriptionData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( PrescriptionDetailsModel prescriptionData)?  generatingPrescription,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GeneratingPrescription() when generatingPrescription != null:
return generatingPrescription(_that.prescriptionData);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SendPrescriptionEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendPrescriptionEvent.started()';
}


}




/// @nodoc


class _GeneratingPrescription implements SendPrescriptionEvent {
  const _GeneratingPrescription(this.prescriptionData);
  

 final  PrescriptionDetailsModel prescriptionData;

/// Create a copy of SendPrescriptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratingPrescriptionCopyWith<_GeneratingPrescription> get copyWith => __$GeneratingPrescriptionCopyWithImpl<_GeneratingPrescription>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneratingPrescription&&(identical(other.prescriptionData, prescriptionData) || other.prescriptionData == prescriptionData));
}


@override
int get hashCode => Object.hash(runtimeType,prescriptionData);

@override
String toString() {
  return 'SendPrescriptionEvent.generatingPrescription(prescriptionData: $prescriptionData)';
}


}

/// @nodoc
abstract mixin class _$GeneratingPrescriptionCopyWith<$Res> implements $SendPrescriptionEventCopyWith<$Res> {
  factory _$GeneratingPrescriptionCopyWith(_GeneratingPrescription value, $Res Function(_GeneratingPrescription) _then) = __$GeneratingPrescriptionCopyWithImpl;
@useResult
$Res call({
 PrescriptionDetailsModel prescriptionData
});




}
/// @nodoc
class __$GeneratingPrescriptionCopyWithImpl<$Res>
    implements _$GeneratingPrescriptionCopyWith<$Res> {
  __$GeneratingPrescriptionCopyWithImpl(this._self, this._then);

  final _GeneratingPrescription _self;
  final $Res Function(_GeneratingPrescription) _then;

/// Create a copy of SendPrescriptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prescriptionData = null,}) {
  return _then(_GeneratingPrescription(
null == prescriptionData ? _self.prescriptionData : prescriptionData // ignore: cast_nullable_to_non_nullable
as PrescriptionDetailsModel,
  ));
}


}

/// @nodoc
mixin _$SendPrescriptionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendPrescriptionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendPrescriptionState()';
}


}

/// @nodoc
class $SendPrescriptionStateCopyWith<$Res>  {
$SendPrescriptionStateCopyWith(SendPrescriptionState _, $Res Function(SendPrescriptionState) __);
}


/// Adds pattern-matching-related methods to [SendPrescriptionState].
extension SendPrescriptionStatePatterns on SendPrescriptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SendPrescriptionInitial value)?  initial,TResult Function( SendPrescriptionLoading value)?  loading,TResult Function( SendPrescriptionSuccess value)?  success,TResult Function( SendPrescriptionError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SendPrescriptionInitial() when initial != null:
return initial(_that);case SendPrescriptionLoading() when loading != null:
return loading(_that);case SendPrescriptionSuccess() when success != null:
return success(_that);case SendPrescriptionError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SendPrescriptionInitial value)  initial,required TResult Function( SendPrescriptionLoading value)  loading,required TResult Function( SendPrescriptionSuccess value)  success,required TResult Function( SendPrescriptionError value)  error,}){
final _that = this;
switch (_that) {
case SendPrescriptionInitial():
return initial(_that);case SendPrescriptionLoading():
return loading(_that);case SendPrescriptionSuccess():
return success(_that);case SendPrescriptionError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SendPrescriptionInitial value)?  initial,TResult? Function( SendPrescriptionLoading value)?  loading,TResult? Function( SendPrescriptionSuccess value)?  success,TResult? Function( SendPrescriptionError value)?  error,}){
final _that = this;
switch (_that) {
case SendPrescriptionInitial() when initial != null:
return initial(_that);case SendPrescriptionLoading() when loading != null:
return loading(_that);case SendPrescriptionSuccess() when success != null:
return success(_that);case SendPrescriptionError() when error != null:
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
case SendPrescriptionInitial() when initial != null:
return initial();case SendPrescriptionLoading() when loading != null:
return loading();case SendPrescriptionSuccess() when success != null:
return success();case SendPrescriptionError() when error != null:
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
case SendPrescriptionInitial():
return initial();case SendPrescriptionLoading():
return loading();case SendPrescriptionSuccess():
return success();case SendPrescriptionError():
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
case SendPrescriptionInitial() when initial != null:
return initial();case SendPrescriptionLoading() when loading != null:
return loading();case SendPrescriptionSuccess() when success != null:
return success();case SendPrescriptionError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SendPrescriptionInitial implements SendPrescriptionState {
  const SendPrescriptionInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendPrescriptionInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendPrescriptionState.initial()';
}


}




/// @nodoc


class SendPrescriptionLoading implements SendPrescriptionState {
  const SendPrescriptionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendPrescriptionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendPrescriptionState.loading()';
}


}




/// @nodoc


class SendPrescriptionSuccess implements SendPrescriptionState {
  const SendPrescriptionSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendPrescriptionSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendPrescriptionState.success()';
}


}




/// @nodoc


class SendPrescriptionError implements SendPrescriptionState {
  const SendPrescriptionError(this.message);
  

 final  String message;

/// Create a copy of SendPrescriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendPrescriptionErrorCopyWith<SendPrescriptionError> get copyWith => _$SendPrescriptionErrorCopyWithImpl<SendPrescriptionError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendPrescriptionError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SendPrescriptionState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SendPrescriptionErrorCopyWith<$Res> implements $SendPrescriptionStateCopyWith<$Res> {
  factory $SendPrescriptionErrorCopyWith(SendPrescriptionError value, $Res Function(SendPrescriptionError) _then) = _$SendPrescriptionErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SendPrescriptionErrorCopyWithImpl<$Res>
    implements $SendPrescriptionErrorCopyWith<$Res> {
  _$SendPrescriptionErrorCopyWithImpl(this._self, this._then);

  final SendPrescriptionError _self;
  final $Res Function(SendPrescriptionError) _then;

/// Create a copy of SendPrescriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SendPrescriptionError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
