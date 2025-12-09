// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedbackDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackDetailsState()';
}


}

/// @nodoc
class $FeedbackDetailsStateCopyWith<$Res>  {
$FeedbackDetailsStateCopyWith(FeedbackDetailsState _, $Res Function(FeedbackDetailsState) __);
}


/// Adds pattern-matching-related methods to [FeedbackDetailsState].
extension FeedbackDetailsStatePatterns on FeedbackDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FeedbackDetailsInitial value)?  initial,TResult Function( FeedbackDetailsLoading value)?  loading,TResult Function( FeedbackDetailsSuccess value)?  success,TResult Function( FeedbackDetailsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FeedbackDetailsInitial() when initial != null:
return initial(_that);case FeedbackDetailsLoading() when loading != null:
return loading(_that);case FeedbackDetailsSuccess() when success != null:
return success(_that);case FeedbackDetailsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FeedbackDetailsInitial value)  initial,required TResult Function( FeedbackDetailsLoading value)  loading,required TResult Function( FeedbackDetailsSuccess value)  success,required TResult Function( FeedbackDetailsError value)  error,}){
final _that = this;
switch (_that) {
case FeedbackDetailsInitial():
return initial(_that);case FeedbackDetailsLoading():
return loading(_that);case FeedbackDetailsSuccess():
return success(_that);case FeedbackDetailsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FeedbackDetailsInitial value)?  initial,TResult? Function( FeedbackDetailsLoading value)?  loading,TResult? Function( FeedbackDetailsSuccess value)?  success,TResult? Function( FeedbackDetailsError value)?  error,}){
final _that = this;
switch (_that) {
case FeedbackDetailsInitial() when initial != null:
return initial(_that);case FeedbackDetailsLoading() when loading != null:
return loading(_that);case FeedbackDetailsSuccess() when success != null:
return success(_that);case FeedbackDetailsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( FeedbackDetailsModel data)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FeedbackDetailsInitial() when initial != null:
return initial();case FeedbackDetailsLoading() when loading != null:
return loading();case FeedbackDetailsSuccess() when success != null:
return success(_that.data);case FeedbackDetailsError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( FeedbackDetailsModel data)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case FeedbackDetailsInitial():
return initial();case FeedbackDetailsLoading():
return loading();case FeedbackDetailsSuccess():
return success(_that.data);case FeedbackDetailsError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( FeedbackDetailsModel data)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case FeedbackDetailsInitial() when initial != null:
return initial();case FeedbackDetailsLoading() when loading != null:
return loading();case FeedbackDetailsSuccess() when success != null:
return success(_that.data);case FeedbackDetailsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class FeedbackDetailsInitial implements FeedbackDetailsState {
  const FeedbackDetailsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackDetailsState.initial()';
}


}




/// @nodoc


class FeedbackDetailsLoading implements FeedbackDetailsState {
  const FeedbackDetailsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackDetailsState.loading()';
}


}




/// @nodoc


class FeedbackDetailsSuccess implements FeedbackDetailsState {
  const FeedbackDetailsSuccess(this.data);
  

 final  FeedbackDetailsModel data;

/// Create a copy of FeedbackDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackDetailsSuccessCopyWith<FeedbackDetailsSuccess> get copyWith => _$FeedbackDetailsSuccessCopyWithImpl<FeedbackDetailsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackDetailsSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'FeedbackDetailsState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $FeedbackDetailsSuccessCopyWith<$Res> implements $FeedbackDetailsStateCopyWith<$Res> {
  factory $FeedbackDetailsSuccessCopyWith(FeedbackDetailsSuccess value, $Res Function(FeedbackDetailsSuccess) _then) = _$FeedbackDetailsSuccessCopyWithImpl;
@useResult
$Res call({
 FeedbackDetailsModel data
});




}
/// @nodoc
class _$FeedbackDetailsSuccessCopyWithImpl<$Res>
    implements $FeedbackDetailsSuccessCopyWith<$Res> {
  _$FeedbackDetailsSuccessCopyWithImpl(this._self, this._then);

  final FeedbackDetailsSuccess _self;
  final $Res Function(FeedbackDetailsSuccess) _then;

/// Create a copy of FeedbackDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(FeedbackDetailsSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FeedbackDetailsModel,
  ));
}


}

/// @nodoc


class FeedbackDetailsError implements FeedbackDetailsState {
  const FeedbackDetailsError(this.message);
  

 final  String message;

/// Create a copy of FeedbackDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackDetailsErrorCopyWith<FeedbackDetailsError> get copyWith => _$FeedbackDetailsErrorCopyWithImpl<FeedbackDetailsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackDetailsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FeedbackDetailsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $FeedbackDetailsErrorCopyWith<$Res> implements $FeedbackDetailsStateCopyWith<$Res> {
  factory $FeedbackDetailsErrorCopyWith(FeedbackDetailsError value, $Res Function(FeedbackDetailsError) _then) = _$FeedbackDetailsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FeedbackDetailsErrorCopyWithImpl<$Res>
    implements $FeedbackDetailsErrorCopyWith<$Res> {
  _$FeedbackDetailsErrorCopyWithImpl(this._self, this._then);

  final FeedbackDetailsError _self;
  final $Res Function(FeedbackDetailsError) _then;

/// Create a copy of FeedbackDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FeedbackDetailsError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
