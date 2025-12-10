// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_donor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterDonorEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDonorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterDonorEvent()';
}


}

/// @nodoc
class $RegisterDonorEventCopyWith<$Res>  {
$RegisterDonorEventCopyWith(RegisterDonorEvent _, $Res Function(RegisterDonorEvent) __);
}


/// Adds pattern-matching-related methods to [RegisterDonorEvent].
extension RegisterDonorEventPatterns on RegisterDonorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _RegisterDonor value)?  registerDonor,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _RegisterDonor() when registerDonor != null:
return registerDonor(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _RegisterDonor value)  registerDonor,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _RegisterDonor():
return registerDonor(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _RegisterDonor value)?  registerDonor,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _RegisterDonor() when registerDonor != null:
return registerDonor(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( BloodDonorRegisterData bloodDonorRegisterData)?  registerDonor,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _RegisterDonor() when registerDonor != null:
return registerDonor(_that.bloodDonorRegisterData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( BloodDonorRegisterData bloodDonorRegisterData)  registerDonor,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _RegisterDonor():
return registerDonor(_that.bloodDonorRegisterData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( BloodDonorRegisterData bloodDonorRegisterData)?  registerDonor,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _RegisterDonor() when registerDonor != null:
return registerDonor(_that.bloodDonorRegisterData);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RegisterDonorEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterDonorEvent.started()';
}


}




/// @nodoc


class _RegisterDonor implements RegisterDonorEvent {
  const _RegisterDonor({required this.bloodDonorRegisterData});
  

 final  BloodDonorRegisterData bloodDonorRegisterData;

/// Create a copy of RegisterDonorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterDonorCopyWith<_RegisterDonor> get copyWith => __$RegisterDonorCopyWithImpl<_RegisterDonor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterDonor&&(identical(other.bloodDonorRegisterData, bloodDonorRegisterData) || other.bloodDonorRegisterData == bloodDonorRegisterData));
}


@override
int get hashCode => Object.hash(runtimeType,bloodDonorRegisterData);

@override
String toString() {
  return 'RegisterDonorEvent.registerDonor(bloodDonorRegisterData: $bloodDonorRegisterData)';
}


}

/// @nodoc
abstract mixin class _$RegisterDonorCopyWith<$Res> implements $RegisterDonorEventCopyWith<$Res> {
  factory _$RegisterDonorCopyWith(_RegisterDonor value, $Res Function(_RegisterDonor) _then) = __$RegisterDonorCopyWithImpl;
@useResult
$Res call({
 BloodDonorRegisterData bloodDonorRegisterData
});




}
/// @nodoc
class __$RegisterDonorCopyWithImpl<$Res>
    implements _$RegisterDonorCopyWith<$Res> {
  __$RegisterDonorCopyWithImpl(this._self, this._then);

  final _RegisterDonor _self;
  final $Res Function(_RegisterDonor) _then;

/// Create a copy of RegisterDonorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bloodDonorRegisterData = null,}) {
  return _then(_RegisterDonor(
bloodDonorRegisterData: null == bloodDonorRegisterData ? _self.bloodDonorRegisterData : bloodDonorRegisterData // ignore: cast_nullable_to_non_nullable
as BloodDonorRegisterData,
  ));
}


}

/// @nodoc
mixin _$RegisterDonorState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDonorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterDonorState()';
}


}

/// @nodoc
class $RegisterDonorStateCopyWith<$Res>  {
$RegisterDonorStateCopyWith(RegisterDonorState _, $Res Function(RegisterDonorState) __);
}


/// Adds pattern-matching-related methods to [RegisterDonorState].
extension RegisterDonorStatePatterns on RegisterDonorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegisterDonorInitial value)?  initial,TResult Function( RegisterDonorLoading value)?  loading,TResult Function( RegisterDonorSuccess value)?  success,TResult Function( RegisterDonorError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegisterDonorInitial() when initial != null:
return initial(_that);case RegisterDonorLoading() when loading != null:
return loading(_that);case RegisterDonorSuccess() when success != null:
return success(_that);case RegisterDonorError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegisterDonorInitial value)  initial,required TResult Function( RegisterDonorLoading value)  loading,required TResult Function( RegisterDonorSuccess value)  success,required TResult Function( RegisterDonorError value)  error,}){
final _that = this;
switch (_that) {
case RegisterDonorInitial():
return initial(_that);case RegisterDonorLoading():
return loading(_that);case RegisterDonorSuccess():
return success(_that);case RegisterDonorError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegisterDonorInitial value)?  initial,TResult? Function( RegisterDonorLoading value)?  loading,TResult? Function( RegisterDonorSuccess value)?  success,TResult? Function( RegisterDonorError value)?  error,}){
final _that = this;
switch (_that) {
case RegisterDonorInitial() when initial != null:
return initial(_that);case RegisterDonorLoading() when loading != null:
return loading(_that);case RegisterDonorSuccess() when success != null:
return success(_that);case RegisterDonorError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( BloodDonorRegisterResponseModel response)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RegisterDonorInitial() when initial != null:
return initial();case RegisterDonorLoading() when loading != null:
return loading();case RegisterDonorSuccess() when success != null:
return success(_that.response);case RegisterDonorError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( BloodDonorRegisterResponseModel response)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case RegisterDonorInitial():
return initial();case RegisterDonorLoading():
return loading();case RegisterDonorSuccess():
return success(_that.response);case RegisterDonorError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( BloodDonorRegisterResponseModel response)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case RegisterDonorInitial() when initial != null:
return initial();case RegisterDonorLoading() when loading != null:
return loading();case RegisterDonorSuccess() when success != null:
return success(_that.response);case RegisterDonorError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class RegisterDonorInitial implements RegisterDonorState {
  const RegisterDonorInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDonorInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterDonorState.initial()';
}


}




/// @nodoc


class RegisterDonorLoading implements RegisterDonorState {
  const RegisterDonorLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDonorLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterDonorState.loading()';
}


}




/// @nodoc


class RegisterDonorSuccess implements RegisterDonorState {
  const RegisterDonorSuccess(this.response);
  

 final  BloodDonorRegisterResponseModel response;

/// Create a copy of RegisterDonorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterDonorSuccessCopyWith<RegisterDonorSuccess> get copyWith => _$RegisterDonorSuccessCopyWithImpl<RegisterDonorSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDonorSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'RegisterDonorState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class $RegisterDonorSuccessCopyWith<$Res> implements $RegisterDonorStateCopyWith<$Res> {
  factory $RegisterDonorSuccessCopyWith(RegisterDonorSuccess value, $Res Function(RegisterDonorSuccess) _then) = _$RegisterDonorSuccessCopyWithImpl;
@useResult
$Res call({
 BloodDonorRegisterResponseModel response
});




}
/// @nodoc
class _$RegisterDonorSuccessCopyWithImpl<$Res>
    implements $RegisterDonorSuccessCopyWith<$Res> {
  _$RegisterDonorSuccessCopyWithImpl(this._self, this._then);

  final RegisterDonorSuccess _self;
  final $Res Function(RegisterDonorSuccess) _then;

/// Create a copy of RegisterDonorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(RegisterDonorSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as BloodDonorRegisterResponseModel,
  ));
}


}

/// @nodoc


class RegisterDonorError implements RegisterDonorState {
  const RegisterDonorError(this.message);
  

 final  String message;

/// Create a copy of RegisterDonorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterDonorErrorCopyWith<RegisterDonorError> get copyWith => _$RegisterDonorErrorCopyWithImpl<RegisterDonorError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDonorError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RegisterDonorState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $RegisterDonorErrorCopyWith<$Res> implements $RegisterDonorStateCopyWith<$Res> {
  factory $RegisterDonorErrorCopyWith(RegisterDonorError value, $Res Function(RegisterDonorError) _then) = _$RegisterDonorErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RegisterDonorErrorCopyWithImpl<$Res>
    implements $RegisterDonorErrorCopyWith<$Res> {
  _$RegisterDonorErrorCopyWithImpl(this._self, this._then);

  final RegisterDonorError _self;
  final $Res Function(RegisterDonorError) _then;

/// Create a copy of RegisterDonorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(RegisterDonorError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
