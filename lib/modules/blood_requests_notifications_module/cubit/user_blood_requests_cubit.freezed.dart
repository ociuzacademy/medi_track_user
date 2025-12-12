// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_blood_requests_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserBloodRequestsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBloodRequestsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserBloodRequestsState()';
}


}

/// @nodoc
class $UserBloodRequestsStateCopyWith<$Res>  {
$UserBloodRequestsStateCopyWith(UserBloodRequestsState _, $Res Function(UserBloodRequestsState) __);
}


/// Adds pattern-matching-related methods to [UserBloodRequestsState].
extension UserBloodRequestsStatePatterns on UserBloodRequestsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserBloodRequestsInitial value)?  initial,TResult Function( UserBloodRequestsLoading value)?  loading,TResult Function( UserBloodRequestsSuccess value)?  success,TResult Function( UserBloodRequestsEmpty value)?  empty,TResult Function( UserBloodRequestsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserBloodRequestsInitial() when initial != null:
return initial(_that);case UserBloodRequestsLoading() when loading != null:
return loading(_that);case UserBloodRequestsSuccess() when success != null:
return success(_that);case UserBloodRequestsEmpty() when empty != null:
return empty(_that);case UserBloodRequestsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserBloodRequestsInitial value)  initial,required TResult Function( UserBloodRequestsLoading value)  loading,required TResult Function( UserBloodRequestsSuccess value)  success,required TResult Function( UserBloodRequestsEmpty value)  empty,required TResult Function( UserBloodRequestsError value)  error,}){
final _that = this;
switch (_that) {
case UserBloodRequestsInitial():
return initial(_that);case UserBloodRequestsLoading():
return loading(_that);case UserBloodRequestsSuccess():
return success(_that);case UserBloodRequestsEmpty():
return empty(_that);case UserBloodRequestsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserBloodRequestsInitial value)?  initial,TResult? Function( UserBloodRequestsLoading value)?  loading,TResult? Function( UserBloodRequestsSuccess value)?  success,TResult? Function( UserBloodRequestsEmpty value)?  empty,TResult? Function( UserBloodRequestsError value)?  error,}){
final _that = this;
switch (_that) {
case UserBloodRequestsInitial() when initial != null:
return initial(_that);case UserBloodRequestsLoading() when loading != null:
return loading(_that);case UserBloodRequestsSuccess() when success != null:
return success(_that);case UserBloodRequestsEmpty() when empty != null:
return empty(_that);case UserBloodRequestsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CommonBloodRequestModel> bloodRequests)?  success,TResult Function()?  empty,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserBloodRequestsInitial() when initial != null:
return initial();case UserBloodRequestsLoading() when loading != null:
return loading();case UserBloodRequestsSuccess() when success != null:
return success(_that.bloodRequests);case UserBloodRequestsEmpty() when empty != null:
return empty();case UserBloodRequestsError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CommonBloodRequestModel> bloodRequests)  success,required TResult Function()  empty,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case UserBloodRequestsInitial():
return initial();case UserBloodRequestsLoading():
return loading();case UserBloodRequestsSuccess():
return success(_that.bloodRequests);case UserBloodRequestsEmpty():
return empty();case UserBloodRequestsError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CommonBloodRequestModel> bloodRequests)?  success,TResult? Function()?  empty,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case UserBloodRequestsInitial() when initial != null:
return initial();case UserBloodRequestsLoading() when loading != null:
return loading();case UserBloodRequestsSuccess() when success != null:
return success(_that.bloodRequests);case UserBloodRequestsEmpty() when empty != null:
return empty();case UserBloodRequestsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UserBloodRequestsInitial implements UserBloodRequestsState {
  const UserBloodRequestsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBloodRequestsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserBloodRequestsState.initial()';
}


}




/// @nodoc


class UserBloodRequestsLoading implements UserBloodRequestsState {
  const UserBloodRequestsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBloodRequestsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserBloodRequestsState.loading()';
}


}




/// @nodoc


class UserBloodRequestsSuccess implements UserBloodRequestsState {
  const UserBloodRequestsSuccess({required final  List<CommonBloodRequestModel> bloodRequests}): _bloodRequests = bloodRequests;
  

 final  List<CommonBloodRequestModel> _bloodRequests;
 List<CommonBloodRequestModel> get bloodRequests {
  if (_bloodRequests is EqualUnmodifiableListView) return _bloodRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bloodRequests);
}


/// Create a copy of UserBloodRequestsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserBloodRequestsSuccessCopyWith<UserBloodRequestsSuccess> get copyWith => _$UserBloodRequestsSuccessCopyWithImpl<UserBloodRequestsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBloodRequestsSuccess&&const DeepCollectionEquality().equals(other._bloodRequests, _bloodRequests));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bloodRequests));

@override
String toString() {
  return 'UserBloodRequestsState.success(bloodRequests: $bloodRequests)';
}


}

/// @nodoc
abstract mixin class $UserBloodRequestsSuccessCopyWith<$Res> implements $UserBloodRequestsStateCopyWith<$Res> {
  factory $UserBloodRequestsSuccessCopyWith(UserBloodRequestsSuccess value, $Res Function(UserBloodRequestsSuccess) _then) = _$UserBloodRequestsSuccessCopyWithImpl;
@useResult
$Res call({
 List<CommonBloodRequestModel> bloodRequests
});




}
/// @nodoc
class _$UserBloodRequestsSuccessCopyWithImpl<$Res>
    implements $UserBloodRequestsSuccessCopyWith<$Res> {
  _$UserBloodRequestsSuccessCopyWithImpl(this._self, this._then);

  final UserBloodRequestsSuccess _self;
  final $Res Function(UserBloodRequestsSuccess) _then;

/// Create a copy of UserBloodRequestsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bloodRequests = null,}) {
  return _then(UserBloodRequestsSuccess(
bloodRequests: null == bloodRequests ? _self._bloodRequests : bloodRequests // ignore: cast_nullable_to_non_nullable
as List<CommonBloodRequestModel>,
  ));
}


}

/// @nodoc


class UserBloodRequestsEmpty implements UserBloodRequestsState {
  const UserBloodRequestsEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBloodRequestsEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserBloodRequestsState.empty()';
}


}




/// @nodoc


class UserBloodRequestsError implements UserBloodRequestsState {
  const UserBloodRequestsError({required this.message});
  

 final  String message;

/// Create a copy of UserBloodRequestsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserBloodRequestsErrorCopyWith<UserBloodRequestsError> get copyWith => _$UserBloodRequestsErrorCopyWithImpl<UserBloodRequestsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBloodRequestsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserBloodRequestsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UserBloodRequestsErrorCopyWith<$Res> implements $UserBloodRequestsStateCopyWith<$Res> {
  factory $UserBloodRequestsErrorCopyWith(UserBloodRequestsError value, $Res Function(UserBloodRequestsError) _then) = _$UserBloodRequestsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UserBloodRequestsErrorCopyWithImpl<$Res>
    implements $UserBloodRequestsErrorCopyWith<$Res> {
  _$UserBloodRequestsErrorCopyWithImpl(this._self, this._then);

  final UserBloodRequestsError _self;
  final $Res Function(UserBloodRequestsError) _then;

/// Create a copy of UserBloodRequestsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UserBloodRequestsError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
