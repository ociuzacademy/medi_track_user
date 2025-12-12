// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_blood_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AcceptBloodRequestEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptBloodRequestEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AcceptBloodRequestEvent()';
}


}

/// @nodoc
class $AcceptBloodRequestEventCopyWith<$Res>  {
$AcceptBloodRequestEventCopyWith(AcceptBloodRequestEvent _, $Res Function(AcceptBloodRequestEvent) __);
}


/// Adds pattern-matching-related methods to [AcceptBloodRequestEvent].
extension AcceptBloodRequestEventPatterns on AcceptBloodRequestEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _AcceptBloodRequest value)?  acceptBloodRequest,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AcceptBloodRequest() when acceptBloodRequest != null:
return acceptBloodRequest(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _AcceptBloodRequest value)  acceptBloodRequest,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _AcceptBloodRequest():
return acceptBloodRequest(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _AcceptBloodRequest value)?  acceptBloodRequest,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AcceptBloodRequest() when acceptBloodRequest != null:
return acceptBloodRequest(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int requestId)?  acceptBloodRequest,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AcceptBloodRequest() when acceptBloodRequest != null:
return acceptBloodRequest(_that.requestId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int requestId)  acceptBloodRequest,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _AcceptBloodRequest():
return acceptBloodRequest(_that.requestId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int requestId)?  acceptBloodRequest,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AcceptBloodRequest() when acceptBloodRequest != null:
return acceptBloodRequest(_that.requestId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AcceptBloodRequestEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AcceptBloodRequestEvent.started()';
}


}




/// @nodoc


class _AcceptBloodRequest implements AcceptBloodRequestEvent {
  const _AcceptBloodRequest({required this.requestId});
  

 final  int requestId;

/// Create a copy of AcceptBloodRequestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptBloodRequestCopyWith<_AcceptBloodRequest> get copyWith => __$AcceptBloodRequestCopyWithImpl<_AcceptBloodRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptBloodRequest&&(identical(other.requestId, requestId) || other.requestId == requestId));
}


@override
int get hashCode => Object.hash(runtimeType,requestId);

@override
String toString() {
  return 'AcceptBloodRequestEvent.acceptBloodRequest(requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class _$AcceptBloodRequestCopyWith<$Res> implements $AcceptBloodRequestEventCopyWith<$Res> {
  factory _$AcceptBloodRequestCopyWith(_AcceptBloodRequest value, $Res Function(_AcceptBloodRequest) _then) = __$AcceptBloodRequestCopyWithImpl;
@useResult
$Res call({
 int requestId
});




}
/// @nodoc
class __$AcceptBloodRequestCopyWithImpl<$Res>
    implements _$AcceptBloodRequestCopyWith<$Res> {
  __$AcceptBloodRequestCopyWithImpl(this._self, this._then);

  final _AcceptBloodRequest _self;
  final $Res Function(_AcceptBloodRequest) _then;

/// Create a copy of AcceptBloodRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requestId = null,}) {
  return _then(_AcceptBloodRequest(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AcceptBloodRequestState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptBloodRequestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AcceptBloodRequestState()';
}


}

/// @nodoc
class $AcceptBloodRequestStateCopyWith<$Res>  {
$AcceptBloodRequestStateCopyWith(AcceptBloodRequestState _, $Res Function(AcceptBloodRequestState) __);
}


/// Adds pattern-matching-related methods to [AcceptBloodRequestState].
extension AcceptBloodRequestStatePatterns on AcceptBloodRequestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AcceptBloodRequestInitial value)?  initial,TResult Function( AcceptBloodRequestLoading value)?  loading,TResult Function( AcceptBloodRequestSuccess value)?  success,TResult Function( AcceptBloodRequestError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AcceptBloodRequestInitial() when initial != null:
return initial(_that);case AcceptBloodRequestLoading() when loading != null:
return loading(_that);case AcceptBloodRequestSuccess() when success != null:
return success(_that);case AcceptBloodRequestError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AcceptBloodRequestInitial value)  initial,required TResult Function( AcceptBloodRequestLoading value)  loading,required TResult Function( AcceptBloodRequestSuccess value)  success,required TResult Function( AcceptBloodRequestError value)  error,}){
final _that = this;
switch (_that) {
case AcceptBloodRequestInitial():
return initial(_that);case AcceptBloodRequestLoading():
return loading(_that);case AcceptBloodRequestSuccess():
return success(_that);case AcceptBloodRequestError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AcceptBloodRequestInitial value)?  initial,TResult? Function( AcceptBloodRequestLoading value)?  loading,TResult? Function( AcceptBloodRequestSuccess value)?  success,TResult? Function( AcceptBloodRequestError value)?  error,}){
final _that = this;
switch (_that) {
case AcceptBloodRequestInitial() when initial != null:
return initial(_that);case AcceptBloodRequestLoading() when loading != null:
return loading(_that);case AcceptBloodRequestSuccess() when success != null:
return success(_that);case AcceptBloodRequestError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AcceptBloodRequestResponseModel response)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AcceptBloodRequestInitial() when initial != null:
return initial();case AcceptBloodRequestLoading() when loading != null:
return loading();case AcceptBloodRequestSuccess() when success != null:
return success(_that.response);case AcceptBloodRequestError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AcceptBloodRequestResponseModel response)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AcceptBloodRequestInitial():
return initial();case AcceptBloodRequestLoading():
return loading();case AcceptBloodRequestSuccess():
return success(_that.response);case AcceptBloodRequestError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AcceptBloodRequestResponseModel response)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AcceptBloodRequestInitial() when initial != null:
return initial();case AcceptBloodRequestLoading() when loading != null:
return loading();case AcceptBloodRequestSuccess() when success != null:
return success(_that.response);case AcceptBloodRequestError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AcceptBloodRequestInitial implements AcceptBloodRequestState {
  const AcceptBloodRequestInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptBloodRequestInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AcceptBloodRequestState.initial()';
}


}




/// @nodoc


class AcceptBloodRequestLoading implements AcceptBloodRequestState {
  const AcceptBloodRequestLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptBloodRequestLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AcceptBloodRequestState.loading()';
}


}




/// @nodoc


class AcceptBloodRequestSuccess implements AcceptBloodRequestState {
  const AcceptBloodRequestSuccess(this.response);
  

 final  AcceptBloodRequestResponseModel response;

/// Create a copy of AcceptBloodRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptBloodRequestSuccessCopyWith<AcceptBloodRequestSuccess> get copyWith => _$AcceptBloodRequestSuccessCopyWithImpl<AcceptBloodRequestSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptBloodRequestSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'AcceptBloodRequestState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class $AcceptBloodRequestSuccessCopyWith<$Res> implements $AcceptBloodRequestStateCopyWith<$Res> {
  factory $AcceptBloodRequestSuccessCopyWith(AcceptBloodRequestSuccess value, $Res Function(AcceptBloodRequestSuccess) _then) = _$AcceptBloodRequestSuccessCopyWithImpl;
@useResult
$Res call({
 AcceptBloodRequestResponseModel response
});




}
/// @nodoc
class _$AcceptBloodRequestSuccessCopyWithImpl<$Res>
    implements $AcceptBloodRequestSuccessCopyWith<$Res> {
  _$AcceptBloodRequestSuccessCopyWithImpl(this._self, this._then);

  final AcceptBloodRequestSuccess _self;
  final $Res Function(AcceptBloodRequestSuccess) _then;

/// Create a copy of AcceptBloodRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(AcceptBloodRequestSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AcceptBloodRequestResponseModel,
  ));
}


}

/// @nodoc


class AcceptBloodRequestError implements AcceptBloodRequestState {
  const AcceptBloodRequestError(this.message);
  

 final  String message;

/// Create a copy of AcceptBloodRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptBloodRequestErrorCopyWith<AcceptBloodRequestError> get copyWith => _$AcceptBloodRequestErrorCopyWithImpl<AcceptBloodRequestError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptBloodRequestError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AcceptBloodRequestState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AcceptBloodRequestErrorCopyWith<$Res> implements $AcceptBloodRequestStateCopyWith<$Res> {
  factory $AcceptBloodRequestErrorCopyWith(AcceptBloodRequestError value, $Res Function(AcceptBloodRequestError) _then) = _$AcceptBloodRequestErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AcceptBloodRequestErrorCopyWithImpl<$Res>
    implements $AcceptBloodRequestErrorCopyWith<$Res> {
  _$AcceptBloodRequestErrorCopyWithImpl(this._self, this._then);

  final AcceptBloodRequestError _self;
  final $Res Function(AcceptBloodRequestError) _then;

/// Create a copy of AcceptBloodRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AcceptBloodRequestError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
