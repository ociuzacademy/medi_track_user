// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reschedule_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RescheduleTaskEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleTaskEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RescheduleTaskEvent()';
}


}

/// @nodoc
class $RescheduleTaskEventCopyWith<$Res>  {
$RescheduleTaskEventCopyWith(RescheduleTaskEvent _, $Res Function(RescheduleTaskEvent) __);
}


/// Adds pattern-matching-related methods to [RescheduleTaskEvent].
extension RescheduleTaskEventPatterns on RescheduleTaskEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _AcceptingReschedule value)?  acceptingReschedule,TResult Function( _RejectingReschedule value)?  rejectingReschedule,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AcceptingReschedule() when acceptingReschedule != null:
return acceptingReschedule(_that);case _RejectingReschedule() when rejectingReschedule != null:
return rejectingReschedule(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _AcceptingReschedule value)  acceptingReschedule,required TResult Function( _RejectingReschedule value)  rejectingReschedule,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _AcceptingReschedule():
return acceptingReschedule(_that);case _RejectingReschedule():
return rejectingReschedule(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _AcceptingReschedule value)?  acceptingReschedule,TResult? Function( _RejectingReschedule value)?  rejectingReschedule,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AcceptingReschedule() when acceptingReschedule != null:
return acceptingReschedule(_that);case _RejectingReschedule() when rejectingReschedule != null:
return rejectingReschedule(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int appointmentId)?  acceptingReschedule,TResult Function( int appointmentId)?  rejectingReschedule,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AcceptingReschedule() when acceptingReschedule != null:
return acceptingReschedule(_that.appointmentId);case _RejectingReschedule() when rejectingReschedule != null:
return rejectingReschedule(_that.appointmentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int appointmentId)  acceptingReschedule,required TResult Function( int appointmentId)  rejectingReschedule,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _AcceptingReschedule():
return acceptingReschedule(_that.appointmentId);case _RejectingReschedule():
return rejectingReschedule(_that.appointmentId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int appointmentId)?  acceptingReschedule,TResult? Function( int appointmentId)?  rejectingReschedule,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AcceptingReschedule() when acceptingReschedule != null:
return acceptingReschedule(_that.appointmentId);case _RejectingReschedule() when rejectingReschedule != null:
return rejectingReschedule(_that.appointmentId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RescheduleTaskEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RescheduleTaskEvent.started()';
}


}




/// @nodoc


class _AcceptingReschedule implements RescheduleTaskEvent {
  const _AcceptingReschedule({required this.appointmentId});
  

 final  int appointmentId;

/// Create a copy of RescheduleTaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptingRescheduleCopyWith<_AcceptingReschedule> get copyWith => __$AcceptingRescheduleCopyWithImpl<_AcceptingReschedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptingReschedule&&(identical(other.appointmentId, appointmentId) || other.appointmentId == appointmentId));
}


@override
int get hashCode => Object.hash(runtimeType,appointmentId);

@override
String toString() {
  return 'RescheduleTaskEvent.acceptingReschedule(appointmentId: $appointmentId)';
}


}

/// @nodoc
abstract mixin class _$AcceptingRescheduleCopyWith<$Res> implements $RescheduleTaskEventCopyWith<$Res> {
  factory _$AcceptingRescheduleCopyWith(_AcceptingReschedule value, $Res Function(_AcceptingReschedule) _then) = __$AcceptingRescheduleCopyWithImpl;
@useResult
$Res call({
 int appointmentId
});




}
/// @nodoc
class __$AcceptingRescheduleCopyWithImpl<$Res>
    implements _$AcceptingRescheduleCopyWith<$Res> {
  __$AcceptingRescheduleCopyWithImpl(this._self, this._then);

  final _AcceptingReschedule _self;
  final $Res Function(_AcceptingReschedule) _then;

/// Create a copy of RescheduleTaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointmentId = null,}) {
  return _then(_AcceptingReschedule(
appointmentId: null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _RejectingReschedule implements RescheduleTaskEvent {
  const _RejectingReschedule({required this.appointmentId});
  

 final  int appointmentId;

/// Create a copy of RescheduleTaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RejectingRescheduleCopyWith<_RejectingReschedule> get copyWith => __$RejectingRescheduleCopyWithImpl<_RejectingReschedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RejectingReschedule&&(identical(other.appointmentId, appointmentId) || other.appointmentId == appointmentId));
}


@override
int get hashCode => Object.hash(runtimeType,appointmentId);

@override
String toString() {
  return 'RescheduleTaskEvent.rejectingReschedule(appointmentId: $appointmentId)';
}


}

/// @nodoc
abstract mixin class _$RejectingRescheduleCopyWith<$Res> implements $RescheduleTaskEventCopyWith<$Res> {
  factory _$RejectingRescheduleCopyWith(_RejectingReschedule value, $Res Function(_RejectingReschedule) _then) = __$RejectingRescheduleCopyWithImpl;
@useResult
$Res call({
 int appointmentId
});




}
/// @nodoc
class __$RejectingRescheduleCopyWithImpl<$Res>
    implements _$RejectingRescheduleCopyWith<$Res> {
  __$RejectingRescheduleCopyWithImpl(this._self, this._then);

  final _RejectingReschedule _self;
  final $Res Function(_RejectingReschedule) _then;

/// Create a copy of RescheduleTaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appointmentId = null,}) {
  return _then(_RejectingReschedule(
appointmentId: null == appointmentId ? _self.appointmentId : appointmentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RescheduleTaskState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleTaskState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RescheduleTaskState()';
}


}

/// @nodoc
class $RescheduleTaskStateCopyWith<$Res>  {
$RescheduleTaskStateCopyWith(RescheduleTaskState _, $Res Function(RescheduleTaskState) __);
}


/// Adds pattern-matching-related methods to [RescheduleTaskState].
extension RescheduleTaskStatePatterns on RescheduleTaskState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RescheduleTaskInitial value)?  initial,TResult Function( RescheduleTaskLoading value)?  loading,TResult Function( RescheduleTaskAcceptRescheduleSuccess value)?  acceptRescheduleSuccess,TResult Function( RescheduleTaskRejectRescheduleSuccess value)?  rejectRescheduleSuccess,TResult Function( RescheduleTaskError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RescheduleTaskInitial() when initial != null:
return initial(_that);case RescheduleTaskLoading() when loading != null:
return loading(_that);case RescheduleTaskAcceptRescheduleSuccess() when acceptRescheduleSuccess != null:
return acceptRescheduleSuccess(_that);case RescheduleTaskRejectRescheduleSuccess() when rejectRescheduleSuccess != null:
return rejectRescheduleSuccess(_that);case RescheduleTaskError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RescheduleTaskInitial value)  initial,required TResult Function( RescheduleTaskLoading value)  loading,required TResult Function( RescheduleTaskAcceptRescheduleSuccess value)  acceptRescheduleSuccess,required TResult Function( RescheduleTaskRejectRescheduleSuccess value)  rejectRescheduleSuccess,required TResult Function( RescheduleTaskError value)  error,}){
final _that = this;
switch (_that) {
case RescheduleTaskInitial():
return initial(_that);case RescheduleTaskLoading():
return loading(_that);case RescheduleTaskAcceptRescheduleSuccess():
return acceptRescheduleSuccess(_that);case RescheduleTaskRejectRescheduleSuccess():
return rejectRescheduleSuccess(_that);case RescheduleTaskError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RescheduleTaskInitial value)?  initial,TResult? Function( RescheduleTaskLoading value)?  loading,TResult? Function( RescheduleTaskAcceptRescheduleSuccess value)?  acceptRescheduleSuccess,TResult? Function( RescheduleTaskRejectRescheduleSuccess value)?  rejectRescheduleSuccess,TResult? Function( RescheduleTaskError value)?  error,}){
final _that = this;
switch (_that) {
case RescheduleTaskInitial() when initial != null:
return initial(_that);case RescheduleTaskLoading() when loading != null:
return loading(_that);case RescheduleTaskAcceptRescheduleSuccess() when acceptRescheduleSuccess != null:
return acceptRescheduleSuccess(_that);case RescheduleTaskRejectRescheduleSuccess() when rejectRescheduleSuccess != null:
return rejectRescheduleSuccess(_that);case RescheduleTaskError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isAccepting)?  loading,TResult Function( AcceptRescheduleResponseModel response)?  acceptRescheduleSuccess,TResult Function( RejectRescheduleResponseModel response)?  rejectRescheduleSuccess,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RescheduleTaskInitial() when initial != null:
return initial();case RescheduleTaskLoading() when loading != null:
return loading(_that.isAccepting);case RescheduleTaskAcceptRescheduleSuccess() when acceptRescheduleSuccess != null:
return acceptRescheduleSuccess(_that.response);case RescheduleTaskRejectRescheduleSuccess() when rejectRescheduleSuccess != null:
return rejectRescheduleSuccess(_that.response);case RescheduleTaskError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isAccepting)  loading,required TResult Function( AcceptRescheduleResponseModel response)  acceptRescheduleSuccess,required TResult Function( RejectRescheduleResponseModel response)  rejectRescheduleSuccess,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case RescheduleTaskInitial():
return initial();case RescheduleTaskLoading():
return loading(_that.isAccepting);case RescheduleTaskAcceptRescheduleSuccess():
return acceptRescheduleSuccess(_that.response);case RescheduleTaskRejectRescheduleSuccess():
return rejectRescheduleSuccess(_that.response);case RescheduleTaskError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isAccepting)?  loading,TResult? Function( AcceptRescheduleResponseModel response)?  acceptRescheduleSuccess,TResult? Function( RejectRescheduleResponseModel response)?  rejectRescheduleSuccess,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case RescheduleTaskInitial() when initial != null:
return initial();case RescheduleTaskLoading() when loading != null:
return loading(_that.isAccepting);case RescheduleTaskAcceptRescheduleSuccess() when acceptRescheduleSuccess != null:
return acceptRescheduleSuccess(_that.response);case RescheduleTaskRejectRescheduleSuccess() when rejectRescheduleSuccess != null:
return rejectRescheduleSuccess(_that.response);case RescheduleTaskError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class RescheduleTaskInitial implements RescheduleTaskState {
  const RescheduleTaskInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleTaskInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RescheduleTaskState.initial()';
}


}




/// @nodoc


class RescheduleTaskLoading implements RescheduleTaskState {
  const RescheduleTaskLoading(this.isAccepting);
  

 final  bool isAccepting;

/// Create a copy of RescheduleTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescheduleTaskLoadingCopyWith<RescheduleTaskLoading> get copyWith => _$RescheduleTaskLoadingCopyWithImpl<RescheduleTaskLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleTaskLoading&&(identical(other.isAccepting, isAccepting) || other.isAccepting == isAccepting));
}


@override
int get hashCode => Object.hash(runtimeType,isAccepting);

@override
String toString() {
  return 'RescheduleTaskState.loading(isAccepting: $isAccepting)';
}


}

/// @nodoc
abstract mixin class $RescheduleTaskLoadingCopyWith<$Res> implements $RescheduleTaskStateCopyWith<$Res> {
  factory $RescheduleTaskLoadingCopyWith(RescheduleTaskLoading value, $Res Function(RescheduleTaskLoading) _then) = _$RescheduleTaskLoadingCopyWithImpl;
@useResult
$Res call({
 bool isAccepting
});




}
/// @nodoc
class _$RescheduleTaskLoadingCopyWithImpl<$Res>
    implements $RescheduleTaskLoadingCopyWith<$Res> {
  _$RescheduleTaskLoadingCopyWithImpl(this._self, this._then);

  final RescheduleTaskLoading _self;
  final $Res Function(RescheduleTaskLoading) _then;

/// Create a copy of RescheduleTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isAccepting = null,}) {
  return _then(RescheduleTaskLoading(
null == isAccepting ? _self.isAccepting : isAccepting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class RescheduleTaskAcceptRescheduleSuccess implements RescheduleTaskState {
  const RescheduleTaskAcceptRescheduleSuccess({required this.response});
  

 final  AcceptRescheduleResponseModel response;

/// Create a copy of RescheduleTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescheduleTaskAcceptRescheduleSuccessCopyWith<RescheduleTaskAcceptRescheduleSuccess> get copyWith => _$RescheduleTaskAcceptRescheduleSuccessCopyWithImpl<RescheduleTaskAcceptRescheduleSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleTaskAcceptRescheduleSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'RescheduleTaskState.acceptRescheduleSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class $RescheduleTaskAcceptRescheduleSuccessCopyWith<$Res> implements $RescheduleTaskStateCopyWith<$Res> {
  factory $RescheduleTaskAcceptRescheduleSuccessCopyWith(RescheduleTaskAcceptRescheduleSuccess value, $Res Function(RescheduleTaskAcceptRescheduleSuccess) _then) = _$RescheduleTaskAcceptRescheduleSuccessCopyWithImpl;
@useResult
$Res call({
 AcceptRescheduleResponseModel response
});




}
/// @nodoc
class _$RescheduleTaskAcceptRescheduleSuccessCopyWithImpl<$Res>
    implements $RescheduleTaskAcceptRescheduleSuccessCopyWith<$Res> {
  _$RescheduleTaskAcceptRescheduleSuccessCopyWithImpl(this._self, this._then);

  final RescheduleTaskAcceptRescheduleSuccess _self;
  final $Res Function(RescheduleTaskAcceptRescheduleSuccess) _then;

/// Create a copy of RescheduleTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(RescheduleTaskAcceptRescheduleSuccess(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AcceptRescheduleResponseModel,
  ));
}


}

/// @nodoc


class RescheduleTaskRejectRescheduleSuccess implements RescheduleTaskState {
  const RescheduleTaskRejectRescheduleSuccess({required this.response});
  

 final  RejectRescheduleResponseModel response;

/// Create a copy of RescheduleTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescheduleTaskRejectRescheduleSuccessCopyWith<RescheduleTaskRejectRescheduleSuccess> get copyWith => _$RescheduleTaskRejectRescheduleSuccessCopyWithImpl<RescheduleTaskRejectRescheduleSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleTaskRejectRescheduleSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'RescheduleTaskState.rejectRescheduleSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class $RescheduleTaskRejectRescheduleSuccessCopyWith<$Res> implements $RescheduleTaskStateCopyWith<$Res> {
  factory $RescheduleTaskRejectRescheduleSuccessCopyWith(RescheduleTaskRejectRescheduleSuccess value, $Res Function(RescheduleTaskRejectRescheduleSuccess) _then) = _$RescheduleTaskRejectRescheduleSuccessCopyWithImpl;
@useResult
$Res call({
 RejectRescheduleResponseModel response
});




}
/// @nodoc
class _$RescheduleTaskRejectRescheduleSuccessCopyWithImpl<$Res>
    implements $RescheduleTaskRejectRescheduleSuccessCopyWith<$Res> {
  _$RescheduleTaskRejectRescheduleSuccessCopyWithImpl(this._self, this._then);

  final RescheduleTaskRejectRescheduleSuccess _self;
  final $Res Function(RescheduleTaskRejectRescheduleSuccess) _then;

/// Create a copy of RescheduleTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(RescheduleTaskRejectRescheduleSuccess(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as RejectRescheduleResponseModel,
  ));
}


}

/// @nodoc


class RescheduleTaskError implements RescheduleTaskState {
  const RescheduleTaskError({required this.message});
  

 final  String message;

/// Create a copy of RescheduleTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescheduleTaskErrorCopyWith<RescheduleTaskError> get copyWith => _$RescheduleTaskErrorCopyWithImpl<RescheduleTaskError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleTaskError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RescheduleTaskState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $RescheduleTaskErrorCopyWith<$Res> implements $RescheduleTaskStateCopyWith<$Res> {
  factory $RescheduleTaskErrorCopyWith(RescheduleTaskError value, $Res Function(RescheduleTaskError) _then) = _$RescheduleTaskErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RescheduleTaskErrorCopyWithImpl<$Res>
    implements $RescheduleTaskErrorCopyWith<$Res> {
  _$RescheduleTaskErrorCopyWithImpl(this._self, this._then);

  final RescheduleTaskError _self;
  final $Res Function(RescheduleTaskError) _then;

/// Create a copy of RescheduleTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(RescheduleTaskError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
