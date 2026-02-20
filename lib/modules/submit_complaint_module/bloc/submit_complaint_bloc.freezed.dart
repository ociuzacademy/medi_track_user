// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_complaint_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitComplaintEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitComplaintEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintEvent()';
}


}

/// @nodoc
class $SubmitComplaintEventCopyWith<$Res>  {
$SubmitComplaintEventCopyWith(SubmitComplaintEvent _, $Res Function(SubmitComplaintEvent) __);
}


/// Adds pattern-matching-related methods to [SubmitComplaintEvent].
extension SubmitComplaintEventPatterns on SubmitComplaintEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _SubmitComplaint value)?  submitComplaint,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _SubmitComplaint() when submitComplaint != null:
return submitComplaint(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _SubmitComplaint value)  submitComplaint,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _SubmitComplaint():
return submitComplaint(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _SubmitComplaint value)?  submitComplaint,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _SubmitComplaint() when submitComplaint != null:
return submitComplaint(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ComplaintData complaintData)?  submitComplaint,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _SubmitComplaint() when submitComplaint != null:
return submitComplaint(_that.complaintData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ComplaintData complaintData)  submitComplaint,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _SubmitComplaint():
return submitComplaint(_that.complaintData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ComplaintData complaintData)?  submitComplaint,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _SubmitComplaint() when submitComplaint != null:
return submitComplaint(_that.complaintData);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SubmitComplaintEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintEvent.started()';
}


}




/// @nodoc


class _SubmitComplaint implements SubmitComplaintEvent {
  const _SubmitComplaint({required this.complaintData});
  

 final  ComplaintData complaintData;

/// Create a copy of SubmitComplaintEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitComplaintCopyWith<_SubmitComplaint> get copyWith => __$SubmitComplaintCopyWithImpl<_SubmitComplaint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitComplaint&&(identical(other.complaintData, complaintData) || other.complaintData == complaintData));
}


@override
int get hashCode => Object.hash(runtimeType,complaintData);

@override
String toString() {
  return 'SubmitComplaintEvent.submitComplaint(complaintData: $complaintData)';
}


}

/// @nodoc
abstract mixin class _$SubmitComplaintCopyWith<$Res> implements $SubmitComplaintEventCopyWith<$Res> {
  factory _$SubmitComplaintCopyWith(_SubmitComplaint value, $Res Function(_SubmitComplaint) _then) = __$SubmitComplaintCopyWithImpl;
@useResult
$Res call({
 ComplaintData complaintData
});




}
/// @nodoc
class __$SubmitComplaintCopyWithImpl<$Res>
    implements _$SubmitComplaintCopyWith<$Res> {
  __$SubmitComplaintCopyWithImpl(this._self, this._then);

  final _SubmitComplaint _self;
  final $Res Function(_SubmitComplaint) _then;

/// Create a copy of SubmitComplaintEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? complaintData = null,}) {
  return _then(_SubmitComplaint(
complaintData: null == complaintData ? _self.complaintData : complaintData // ignore: cast_nullable_to_non_nullable
as ComplaintData,
  ));
}


}

/// @nodoc
mixin _$SubmitComplaintState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitComplaintState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState()';
}


}

/// @nodoc
class $SubmitComplaintStateCopyWith<$Res>  {
$SubmitComplaintStateCopyWith(SubmitComplaintState _, $Res Function(SubmitComplaintState) __);
}


/// Adds pattern-matching-related methods to [SubmitComplaintState].
extension SubmitComplaintStatePatterns on SubmitComplaintState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SubmitComplaintInitial value)?  initial,TResult Function( SubmitComplaintLoading value)?  loading,TResult Function( SubmitComplaintSuccess value)?  success,TResult Function( SubmitComplaintError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SubmitComplaintInitial() when initial != null:
return initial(_that);case SubmitComplaintLoading() when loading != null:
return loading(_that);case SubmitComplaintSuccess() when success != null:
return success(_that);case SubmitComplaintError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SubmitComplaintInitial value)  initial,required TResult Function( SubmitComplaintLoading value)  loading,required TResult Function( SubmitComplaintSuccess value)  success,required TResult Function( SubmitComplaintError value)  error,}){
final _that = this;
switch (_that) {
case SubmitComplaintInitial():
return initial(_that);case SubmitComplaintLoading():
return loading(_that);case SubmitComplaintSuccess():
return success(_that);case SubmitComplaintError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SubmitComplaintInitial value)?  initial,TResult? Function( SubmitComplaintLoading value)?  loading,TResult? Function( SubmitComplaintSuccess value)?  success,TResult? Function( SubmitComplaintError value)?  error,}){
final _that = this;
switch (_that) {
case SubmitComplaintInitial() when initial != null:
return initial(_that);case SubmitComplaintLoading() when loading != null:
return loading(_that);case SubmitComplaintSuccess() when success != null:
return success(_that);case SubmitComplaintError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SubmitComplaintResponseModel response)?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SubmitComplaintInitial() when initial != null:
return initial();case SubmitComplaintLoading() when loading != null:
return loading();case SubmitComplaintSuccess() when success != null:
return success(_that.response);case SubmitComplaintError() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SubmitComplaintResponseModel response)  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case SubmitComplaintInitial():
return initial();case SubmitComplaintLoading():
return loading();case SubmitComplaintSuccess():
return success(_that.response);case SubmitComplaintError():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SubmitComplaintResponseModel response)?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case SubmitComplaintInitial() when initial != null:
return initial();case SubmitComplaintLoading() when loading != null:
return loading();case SubmitComplaintSuccess() when success != null:
return success(_that.response);case SubmitComplaintError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SubmitComplaintInitial implements SubmitComplaintState {
  const SubmitComplaintInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitComplaintInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.initial()';
}


}




/// @nodoc


class SubmitComplaintLoading implements SubmitComplaintState {
  const SubmitComplaintLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitComplaintLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.loading()';
}


}




/// @nodoc


class SubmitComplaintSuccess implements SubmitComplaintState {
  const SubmitComplaintSuccess(this.response);
  

 final  SubmitComplaintResponseModel response;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitComplaintSuccessCopyWith<SubmitComplaintSuccess> get copyWith => _$SubmitComplaintSuccessCopyWithImpl<SubmitComplaintSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitComplaintSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'SubmitComplaintState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class $SubmitComplaintSuccessCopyWith<$Res> implements $SubmitComplaintStateCopyWith<$Res> {
  factory $SubmitComplaintSuccessCopyWith(SubmitComplaintSuccess value, $Res Function(SubmitComplaintSuccess) _then) = _$SubmitComplaintSuccessCopyWithImpl;
@useResult
$Res call({
 SubmitComplaintResponseModel response
});




}
/// @nodoc
class _$SubmitComplaintSuccessCopyWithImpl<$Res>
    implements $SubmitComplaintSuccessCopyWith<$Res> {
  _$SubmitComplaintSuccessCopyWithImpl(this._self, this._then);

  final SubmitComplaintSuccess _self;
  final $Res Function(SubmitComplaintSuccess) _then;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(SubmitComplaintSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SubmitComplaintResponseModel,
  ));
}


}

/// @nodoc


class SubmitComplaintError implements SubmitComplaintState {
  const SubmitComplaintError(this.error);
  

 final  String error;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitComplaintErrorCopyWith<SubmitComplaintError> get copyWith => _$SubmitComplaintErrorCopyWithImpl<SubmitComplaintError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitComplaintError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SubmitComplaintState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SubmitComplaintErrorCopyWith<$Res> implements $SubmitComplaintStateCopyWith<$Res> {
  factory $SubmitComplaintErrorCopyWith(SubmitComplaintError value, $Res Function(SubmitComplaintError) _then) = _$SubmitComplaintErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SubmitComplaintErrorCopyWithImpl<$Res>
    implements $SubmitComplaintErrorCopyWith<$Res> {
  _$SubmitComplaintErrorCopyWithImpl(this._self, this._then);

  final SubmitComplaintError _self;
  final $Res Function(SubmitComplaintError) _then;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SubmitComplaintError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
