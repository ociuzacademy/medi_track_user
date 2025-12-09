// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedbackListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackListState()';
}


}

/// @nodoc
class $FeedbackListStateCopyWith<$Res>  {
$FeedbackListStateCopyWith(FeedbackListState _, $Res Function(FeedbackListState) __);
}


/// Adds pattern-matching-related methods to [FeedbackListState].
extension FeedbackListStatePatterns on FeedbackListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FeedbackListInitial value)?  initial,TResult Function( FeedbackListLoading value)?  loading,TResult Function( FeedbackListSuccess value)?  success,TResult Function( FeedbackListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FeedbackListInitial() when initial != null:
return initial(_that);case FeedbackListLoading() when loading != null:
return loading(_that);case FeedbackListSuccess() when success != null:
return success(_that);case FeedbackListError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FeedbackListInitial value)  initial,required TResult Function( FeedbackListLoading value)  loading,required TResult Function( FeedbackListSuccess value)  success,required TResult Function( FeedbackListError value)  error,}){
final _that = this;
switch (_that) {
case FeedbackListInitial():
return initial(_that);case FeedbackListLoading():
return loading(_that);case FeedbackListSuccess():
return success(_that);case FeedbackListError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FeedbackListInitial value)?  initial,TResult? Function( FeedbackListLoading value)?  loading,TResult? Function( FeedbackListSuccess value)?  success,TResult? Function( FeedbackListError value)?  error,}){
final _that = this;
switch (_that) {
case FeedbackListInitial() when initial != null:
return initial(_that);case FeedbackListLoading() when loading != null:
return loading(_that);case FeedbackListSuccess() when success != null:
return success(_that);case FeedbackListError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserFeedbackListModel userFeedbackList)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FeedbackListInitial() when initial != null:
return initial();case FeedbackListLoading() when loading != null:
return loading();case FeedbackListSuccess() when success != null:
return success(_that.userFeedbackList);case FeedbackListError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserFeedbackListModel userFeedbackList)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case FeedbackListInitial():
return initial();case FeedbackListLoading():
return loading();case FeedbackListSuccess():
return success(_that.userFeedbackList);case FeedbackListError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserFeedbackListModel userFeedbackList)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case FeedbackListInitial() when initial != null:
return initial();case FeedbackListLoading() when loading != null:
return loading();case FeedbackListSuccess() when success != null:
return success(_that.userFeedbackList);case FeedbackListError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class FeedbackListInitial implements FeedbackListState {
  const FeedbackListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackListState.initial()';
}


}




/// @nodoc


class FeedbackListLoading implements FeedbackListState {
  const FeedbackListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackListState.loading()';
}


}




/// @nodoc


class FeedbackListSuccess implements FeedbackListState {
  const FeedbackListSuccess({required this.userFeedbackList});
  

 final  UserFeedbackListModel userFeedbackList;

/// Create a copy of FeedbackListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackListSuccessCopyWith<FeedbackListSuccess> get copyWith => _$FeedbackListSuccessCopyWithImpl<FeedbackListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackListSuccess&&(identical(other.userFeedbackList, userFeedbackList) || other.userFeedbackList == userFeedbackList));
}


@override
int get hashCode => Object.hash(runtimeType,userFeedbackList);

@override
String toString() {
  return 'FeedbackListState.success(userFeedbackList: $userFeedbackList)';
}


}

/// @nodoc
abstract mixin class $FeedbackListSuccessCopyWith<$Res> implements $FeedbackListStateCopyWith<$Res> {
  factory $FeedbackListSuccessCopyWith(FeedbackListSuccess value, $Res Function(FeedbackListSuccess) _then) = _$FeedbackListSuccessCopyWithImpl;
@useResult
$Res call({
 UserFeedbackListModel userFeedbackList
});




}
/// @nodoc
class _$FeedbackListSuccessCopyWithImpl<$Res>
    implements $FeedbackListSuccessCopyWith<$Res> {
  _$FeedbackListSuccessCopyWithImpl(this._self, this._then);

  final FeedbackListSuccess _self;
  final $Res Function(FeedbackListSuccess) _then;

/// Create a copy of FeedbackListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userFeedbackList = null,}) {
  return _then(FeedbackListSuccess(
userFeedbackList: null == userFeedbackList ? _self.userFeedbackList : userFeedbackList // ignore: cast_nullable_to_non_nullable
as UserFeedbackListModel,
  ));
}


}

/// @nodoc


class FeedbackListError implements FeedbackListState {
  const FeedbackListError({required this.message});
  

 final  String message;

/// Create a copy of FeedbackListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackListErrorCopyWith<FeedbackListError> get copyWith => _$FeedbackListErrorCopyWithImpl<FeedbackListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackListError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FeedbackListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $FeedbackListErrorCopyWith<$Res> implements $FeedbackListStateCopyWith<$Res> {
  factory $FeedbackListErrorCopyWith(FeedbackListError value, $Res Function(FeedbackListError) _then) = _$FeedbackListErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FeedbackListErrorCopyWithImpl<$Res>
    implements $FeedbackListErrorCopyWith<$Res> {
  _$FeedbackListErrorCopyWithImpl(this._self, this._then);

  final FeedbackListError _self;
  final $Res Function(FeedbackListError) _then;

/// Create a copy of FeedbackListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FeedbackListError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
