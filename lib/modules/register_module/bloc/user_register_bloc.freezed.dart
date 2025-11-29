// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserRegisterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserRegisterEvent()';
}


}

/// @nodoc
class $UserRegisterEventCopyWith<$Res>  {
$UserRegisterEventCopyWith(UserRegisterEvent _, $Res Function(UserRegisterEvent) __);
}


/// Adds pattern-matching-related methods to [UserRegisterEvent].
extension UserRegisterEventPatterns on UserRegisterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _UserRegistering value)?  userRegistering,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _UserRegistering() when userRegistering != null:
return userRegistering(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _UserRegistering value)  userRegistering,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _UserRegistering():
return userRegistering(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _UserRegistering value)?  userRegistering,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _UserRegistering() when userRegistering != null:
return userRegistering(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( RegisterDetails registerDetails)?  userRegistering,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _UserRegistering() when userRegistering != null:
return userRegistering(_that.registerDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( RegisterDetails registerDetails)  userRegistering,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _UserRegistering():
return userRegistering(_that.registerDetails);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( RegisterDetails registerDetails)?  userRegistering,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _UserRegistering() when userRegistering != null:
return userRegistering(_that.registerDetails);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UserRegisterEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserRegisterEvent.started()';
}


}




/// @nodoc


class _UserRegistering implements UserRegisterEvent {
  const _UserRegistering(this.registerDetails);
  

 final  RegisterDetails registerDetails;

/// Create a copy of UserRegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRegisteringCopyWith<_UserRegistering> get copyWith => __$UserRegisteringCopyWithImpl<_UserRegistering>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRegistering&&(identical(other.registerDetails, registerDetails) || other.registerDetails == registerDetails));
}


@override
int get hashCode => Object.hash(runtimeType,registerDetails);

@override
String toString() {
  return 'UserRegisterEvent.userRegistering(registerDetails: $registerDetails)';
}


}

/// @nodoc
abstract mixin class _$UserRegisteringCopyWith<$Res> implements $UserRegisterEventCopyWith<$Res> {
  factory _$UserRegisteringCopyWith(_UserRegistering value, $Res Function(_UserRegistering) _then) = __$UserRegisteringCopyWithImpl;
@useResult
$Res call({
 RegisterDetails registerDetails
});




}
/// @nodoc
class __$UserRegisteringCopyWithImpl<$Res>
    implements _$UserRegisteringCopyWith<$Res> {
  __$UserRegisteringCopyWithImpl(this._self, this._then);

  final _UserRegistering _self;
  final $Res Function(_UserRegistering) _then;

/// Create a copy of UserRegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? registerDetails = null,}) {
  return _then(_UserRegistering(
null == registerDetails ? _self.registerDetails : registerDetails // ignore: cast_nullable_to_non_nullable
as RegisterDetails,
  ));
}


}

/// @nodoc
mixin _$UserRegisterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegisterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserRegisterState()';
}


}

/// @nodoc
class $UserRegisterStateCopyWith<$Res>  {
$UserRegisterStateCopyWith(UserRegisterState _, $Res Function(UserRegisterState) __);
}


/// Adds pattern-matching-related methods to [UserRegisterState].
extension UserRegisterStatePatterns on UserRegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserRegisterInitial value)?  initial,TResult Function( UserRegisterLoading value)?  userRegisterLoading,TResult Function( UserRegisterError value)?  userRegisterError,TResult Function( UserRegisterSuccess value)?  userRegisterSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserRegisterInitial() when initial != null:
return initial(_that);case UserRegisterLoading() when userRegisterLoading != null:
return userRegisterLoading(_that);case UserRegisterError() when userRegisterError != null:
return userRegisterError(_that);case UserRegisterSuccess() when userRegisterSuccess != null:
return userRegisterSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserRegisterInitial value)  initial,required TResult Function( UserRegisterLoading value)  userRegisterLoading,required TResult Function( UserRegisterError value)  userRegisterError,required TResult Function( UserRegisterSuccess value)  userRegisterSuccess,}){
final _that = this;
switch (_that) {
case UserRegisterInitial():
return initial(_that);case UserRegisterLoading():
return userRegisterLoading(_that);case UserRegisterError():
return userRegisterError(_that);case UserRegisterSuccess():
return userRegisterSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserRegisterInitial value)?  initial,TResult? Function( UserRegisterLoading value)?  userRegisterLoading,TResult? Function( UserRegisterError value)?  userRegisterError,TResult? Function( UserRegisterSuccess value)?  userRegisterSuccess,}){
final _that = this;
switch (_that) {
case UserRegisterInitial() when initial != null:
return initial(_that);case UserRegisterLoading() when userRegisterLoading != null:
return userRegisterLoading(_that);case UserRegisterError() when userRegisterError != null:
return userRegisterError(_that);case UserRegisterSuccess() when userRegisterSuccess != null:
return userRegisterSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  userRegisterLoading,TResult Function( String errorMessage)?  userRegisterError,TResult Function( UserRegisterResponseModel response)?  userRegisterSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserRegisterInitial() when initial != null:
return initial();case UserRegisterLoading() when userRegisterLoading != null:
return userRegisterLoading();case UserRegisterError() when userRegisterError != null:
return userRegisterError(_that.errorMessage);case UserRegisterSuccess() when userRegisterSuccess != null:
return userRegisterSuccess(_that.response);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  userRegisterLoading,required TResult Function( String errorMessage)  userRegisterError,required TResult Function( UserRegisterResponseModel response)  userRegisterSuccess,}) {final _that = this;
switch (_that) {
case UserRegisterInitial():
return initial();case UserRegisterLoading():
return userRegisterLoading();case UserRegisterError():
return userRegisterError(_that.errorMessage);case UserRegisterSuccess():
return userRegisterSuccess(_that.response);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  userRegisterLoading,TResult? Function( String errorMessage)?  userRegisterError,TResult? Function( UserRegisterResponseModel response)?  userRegisterSuccess,}) {final _that = this;
switch (_that) {
case UserRegisterInitial() when initial != null:
return initial();case UserRegisterLoading() when userRegisterLoading != null:
return userRegisterLoading();case UserRegisterError() when userRegisterError != null:
return userRegisterError(_that.errorMessage);case UserRegisterSuccess() when userRegisterSuccess != null:
return userRegisterSuccess(_that.response);case _:
  return null;

}
}

}

/// @nodoc


class UserRegisterInitial implements UserRegisterState {
  const UserRegisterInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegisterInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserRegisterState.initial()';
}


}




/// @nodoc


class UserRegisterLoading implements UserRegisterState {
  const UserRegisterLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegisterLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserRegisterState.userRegisterLoading()';
}


}




/// @nodoc


class UserRegisterError implements UserRegisterState {
  const UserRegisterError(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of UserRegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRegisterErrorCopyWith<UserRegisterError> get copyWith => _$UserRegisterErrorCopyWithImpl<UserRegisterError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegisterError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'UserRegisterState.userRegisterError(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $UserRegisterErrorCopyWith<$Res> implements $UserRegisterStateCopyWith<$Res> {
  factory $UserRegisterErrorCopyWith(UserRegisterError value, $Res Function(UserRegisterError) _then) = _$UserRegisterErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$UserRegisterErrorCopyWithImpl<$Res>
    implements $UserRegisterErrorCopyWith<$Res> {
  _$UserRegisterErrorCopyWithImpl(this._self, this._then);

  final UserRegisterError _self;
  final $Res Function(UserRegisterError) _then;

/// Create a copy of UserRegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(UserRegisterError(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UserRegisterSuccess implements UserRegisterState {
  const UserRegisterSuccess(this.response);
  

 final  UserRegisterResponseModel response;

/// Create a copy of UserRegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRegisterSuccessCopyWith<UserRegisterSuccess> get copyWith => _$UserRegisterSuccessCopyWithImpl<UserRegisterSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegisterSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UserRegisterState.userRegisterSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class $UserRegisterSuccessCopyWith<$Res> implements $UserRegisterStateCopyWith<$Res> {
  factory $UserRegisterSuccessCopyWith(UserRegisterSuccess value, $Res Function(UserRegisterSuccess) _then) = _$UserRegisterSuccessCopyWithImpl;
@useResult
$Res call({
 UserRegisterResponseModel response
});




}
/// @nodoc
class _$UserRegisterSuccessCopyWithImpl<$Res>
    implements $UserRegisterSuccessCopyWith<$Res> {
  _$UserRegisterSuccessCopyWithImpl(this._self, this._then);

  final UserRegisterSuccess _self;
  final $Res Function(UserRegisterSuccess) _then;

/// Create a copy of UserRegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(UserRegisterSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as UserRegisterResponseModel,
  ));
}


}

// dart format on
