// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_blood_requests_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllBloodRequestsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllBloodRequestsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllBloodRequestsState()';
}


}

/// @nodoc
class $AllBloodRequestsStateCopyWith<$Res>  {
$AllBloodRequestsStateCopyWith(AllBloodRequestsState _, $Res Function(AllBloodRequestsState) __);
}


/// Adds pattern-matching-related methods to [AllBloodRequestsState].
extension AllBloodRequestsStatePatterns on AllBloodRequestsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AllBloodRequestsInitial value)?  initial,TResult Function( AllBloodRequestsLoading value)?  loading,TResult Function( AllBloodRequestsSuccess value)?  success,TResult Function( AllBloodRequestsEmpty value)?  empty,TResult Function( AllBloodRequestsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AllBloodRequestsInitial() when initial != null:
return initial(_that);case AllBloodRequestsLoading() when loading != null:
return loading(_that);case AllBloodRequestsSuccess() when success != null:
return success(_that);case AllBloodRequestsEmpty() when empty != null:
return empty(_that);case AllBloodRequestsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AllBloodRequestsInitial value)  initial,required TResult Function( AllBloodRequestsLoading value)  loading,required TResult Function( AllBloodRequestsSuccess value)  success,required TResult Function( AllBloodRequestsEmpty value)  empty,required TResult Function( AllBloodRequestsError value)  error,}){
final _that = this;
switch (_that) {
case AllBloodRequestsInitial():
return initial(_that);case AllBloodRequestsLoading():
return loading(_that);case AllBloodRequestsSuccess():
return success(_that);case AllBloodRequestsEmpty():
return empty(_that);case AllBloodRequestsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AllBloodRequestsInitial value)?  initial,TResult? Function( AllBloodRequestsLoading value)?  loading,TResult? Function( AllBloodRequestsSuccess value)?  success,TResult? Function( AllBloodRequestsEmpty value)?  empty,TResult? Function( AllBloodRequestsError value)?  error,}){
final _that = this;
switch (_that) {
case AllBloodRequestsInitial() when initial != null:
return initial(_that);case AllBloodRequestsLoading() when loading != null:
return loading(_that);case AllBloodRequestsSuccess() when success != null:
return success(_that);case AllBloodRequestsEmpty() when empty != null:
return empty(_that);case AllBloodRequestsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CommonBloodRequestModel> data)?  success,TResult Function()?  empty,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AllBloodRequestsInitial() when initial != null:
return initial();case AllBloodRequestsLoading() when loading != null:
return loading();case AllBloodRequestsSuccess() when success != null:
return success(_that.data);case AllBloodRequestsEmpty() when empty != null:
return empty();case AllBloodRequestsError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CommonBloodRequestModel> data)  success,required TResult Function()  empty,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AllBloodRequestsInitial():
return initial();case AllBloodRequestsLoading():
return loading();case AllBloodRequestsSuccess():
return success(_that.data);case AllBloodRequestsEmpty():
return empty();case AllBloodRequestsError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CommonBloodRequestModel> data)?  success,TResult? Function()?  empty,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AllBloodRequestsInitial() when initial != null:
return initial();case AllBloodRequestsLoading() when loading != null:
return loading();case AllBloodRequestsSuccess() when success != null:
return success(_that.data);case AllBloodRequestsEmpty() when empty != null:
return empty();case AllBloodRequestsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AllBloodRequestsInitial implements AllBloodRequestsState {
  const AllBloodRequestsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllBloodRequestsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllBloodRequestsState.initial()';
}


}




/// @nodoc


class AllBloodRequestsLoading implements AllBloodRequestsState {
  const AllBloodRequestsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllBloodRequestsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllBloodRequestsState.loading()';
}


}




/// @nodoc


class AllBloodRequestsSuccess implements AllBloodRequestsState {
  const AllBloodRequestsSuccess(final  List<CommonBloodRequestModel> data): _data = data;
  

 final  List<CommonBloodRequestModel> _data;
 List<CommonBloodRequestModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AllBloodRequestsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllBloodRequestsSuccessCopyWith<AllBloodRequestsSuccess> get copyWith => _$AllBloodRequestsSuccessCopyWithImpl<AllBloodRequestsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllBloodRequestsSuccess&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AllBloodRequestsState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $AllBloodRequestsSuccessCopyWith<$Res> implements $AllBloodRequestsStateCopyWith<$Res> {
  factory $AllBloodRequestsSuccessCopyWith(AllBloodRequestsSuccess value, $Res Function(AllBloodRequestsSuccess) _then) = _$AllBloodRequestsSuccessCopyWithImpl;
@useResult
$Res call({
 List<CommonBloodRequestModel> data
});




}
/// @nodoc
class _$AllBloodRequestsSuccessCopyWithImpl<$Res>
    implements $AllBloodRequestsSuccessCopyWith<$Res> {
  _$AllBloodRequestsSuccessCopyWithImpl(this._self, this._then);

  final AllBloodRequestsSuccess _self;
  final $Res Function(AllBloodRequestsSuccess) _then;

/// Create a copy of AllBloodRequestsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(AllBloodRequestsSuccess(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CommonBloodRequestModel>,
  ));
}


}

/// @nodoc


class AllBloodRequestsEmpty implements AllBloodRequestsState {
  const AllBloodRequestsEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllBloodRequestsEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllBloodRequestsState.empty()';
}


}




/// @nodoc


class AllBloodRequestsError implements AllBloodRequestsState {
  const AllBloodRequestsError(this.message);
  

 final  String message;

/// Create a copy of AllBloodRequestsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllBloodRequestsErrorCopyWith<AllBloodRequestsError> get copyWith => _$AllBloodRequestsErrorCopyWithImpl<AllBloodRequestsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllBloodRequestsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AllBloodRequestsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AllBloodRequestsErrorCopyWith<$Res> implements $AllBloodRequestsStateCopyWith<$Res> {
  factory $AllBloodRequestsErrorCopyWith(AllBloodRequestsError value, $Res Function(AllBloodRequestsError) _then) = _$AllBloodRequestsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AllBloodRequestsErrorCopyWithImpl<$Res>
    implements $AllBloodRequestsErrorCopyWith<$Res> {
  _$AllBloodRequestsErrorCopyWithImpl(this._self, this._then);

  final AllBloodRequestsError _self;
  final $Res Function(AllBloodRequestsError) _then;

/// Create a copy of AllBloodRequestsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AllBloodRequestsError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
