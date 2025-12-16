// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_donation_record_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddDonationRecordEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDonationRecordEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDonationRecordEvent()';
}


}

/// @nodoc
class $AddDonationRecordEventCopyWith<$Res>  {
$AddDonationRecordEventCopyWith(AddDonationRecordEvent _, $Res Function(AddDonationRecordEvent) __);
}


/// Adds pattern-matching-related methods to [AddDonationRecordEvent].
extension AddDonationRecordEventPatterns on AddDonationRecordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _AddDonationRecord value)?  addDonationRecord,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddDonationRecord() when addDonationRecord != null:
return addDonationRecord(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _AddDonationRecord value)  addDonationRecord,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _AddDonationRecord():
return addDonationRecord(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _AddDonationRecord value)?  addDonationRecord,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddDonationRecord() when addDonationRecord != null:
return addDonationRecord(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( UpdateDonationRecordData data)?  addDonationRecord,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddDonationRecord() when addDonationRecord != null:
return addDonationRecord(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( UpdateDonationRecordData data)  addDonationRecord,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _AddDonationRecord():
return addDonationRecord(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( UpdateDonationRecordData data)?  addDonationRecord,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddDonationRecord() when addDonationRecord != null:
return addDonationRecord(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AddDonationRecordEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDonationRecordEvent.started()';
}


}




/// @nodoc


class _AddDonationRecord implements AddDonationRecordEvent {
  const _AddDonationRecord(this.data);
  

 final  UpdateDonationRecordData data;

/// Create a copy of AddDonationRecordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddDonationRecordCopyWith<_AddDonationRecord> get copyWith => __$AddDonationRecordCopyWithImpl<_AddDonationRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddDonationRecord&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AddDonationRecordEvent.addDonationRecord(data: $data)';
}


}

/// @nodoc
abstract mixin class _$AddDonationRecordCopyWith<$Res> implements $AddDonationRecordEventCopyWith<$Res> {
  factory _$AddDonationRecordCopyWith(_AddDonationRecord value, $Res Function(_AddDonationRecord) _then) = __$AddDonationRecordCopyWithImpl;
@useResult
$Res call({
 UpdateDonationRecordData data
});




}
/// @nodoc
class __$AddDonationRecordCopyWithImpl<$Res>
    implements _$AddDonationRecordCopyWith<$Res> {
  __$AddDonationRecordCopyWithImpl(this._self, this._then);

  final _AddDonationRecord _self;
  final $Res Function(_AddDonationRecord) _then;

/// Create a copy of AddDonationRecordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_AddDonationRecord(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UpdateDonationRecordData,
  ));
}


}

/// @nodoc
mixin _$AddDonationRecordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDonationRecordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDonationRecordState()';
}


}

/// @nodoc
class $AddDonationRecordStateCopyWith<$Res>  {
$AddDonationRecordStateCopyWith(AddDonationRecordState _, $Res Function(AddDonationRecordState) __);
}


/// Adds pattern-matching-related methods to [AddDonationRecordState].
extension AddDonationRecordStatePatterns on AddDonationRecordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddDonationRecordInitial value)?  initial,TResult Function( AddDonationRecordLoading value)?  loading,TResult Function( AddDonationRecordSuccess value)?  success,TResult Function( AddDonationRecordError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddDonationRecordInitial() when initial != null:
return initial(_that);case AddDonationRecordLoading() when loading != null:
return loading(_that);case AddDonationRecordSuccess() when success != null:
return success(_that);case AddDonationRecordError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddDonationRecordInitial value)  initial,required TResult Function( AddDonationRecordLoading value)  loading,required TResult Function( AddDonationRecordSuccess value)  success,required TResult Function( AddDonationRecordError value)  error,}){
final _that = this;
switch (_that) {
case AddDonationRecordInitial():
return initial(_that);case AddDonationRecordLoading():
return loading(_that);case AddDonationRecordSuccess():
return success(_that);case AddDonationRecordError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddDonationRecordInitial value)?  initial,TResult? Function( AddDonationRecordLoading value)?  loading,TResult? Function( AddDonationRecordSuccess value)?  success,TResult? Function( AddDonationRecordError value)?  error,}){
final _that = this;
switch (_that) {
case AddDonationRecordInitial() when initial != null:
return initial(_that);case AddDonationRecordLoading() when loading != null:
return loading(_that);case AddDonationRecordSuccess() when success != null:
return success(_that);case AddDonationRecordError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AddDonationRecordResponseModel response)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddDonationRecordInitial() when initial != null:
return initial();case AddDonationRecordLoading() when loading != null:
return loading();case AddDonationRecordSuccess() when success != null:
return success(_that.response);case AddDonationRecordError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AddDonationRecordResponseModel response)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AddDonationRecordInitial():
return initial();case AddDonationRecordLoading():
return loading();case AddDonationRecordSuccess():
return success(_that.response);case AddDonationRecordError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AddDonationRecordResponseModel response)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AddDonationRecordInitial() when initial != null:
return initial();case AddDonationRecordLoading() when loading != null:
return loading();case AddDonationRecordSuccess() when success != null:
return success(_that.response);case AddDonationRecordError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AddDonationRecordInitial implements AddDonationRecordState {
  const AddDonationRecordInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDonationRecordInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDonationRecordState.initial()';
}


}




/// @nodoc


class AddDonationRecordLoading implements AddDonationRecordState {
  const AddDonationRecordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDonationRecordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddDonationRecordState.loading()';
}


}




/// @nodoc


class AddDonationRecordSuccess implements AddDonationRecordState {
  const AddDonationRecordSuccess(this.response);
  

 final  AddDonationRecordResponseModel response;

/// Create a copy of AddDonationRecordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddDonationRecordSuccessCopyWith<AddDonationRecordSuccess> get copyWith => _$AddDonationRecordSuccessCopyWithImpl<AddDonationRecordSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDonationRecordSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'AddDonationRecordState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class $AddDonationRecordSuccessCopyWith<$Res> implements $AddDonationRecordStateCopyWith<$Res> {
  factory $AddDonationRecordSuccessCopyWith(AddDonationRecordSuccess value, $Res Function(AddDonationRecordSuccess) _then) = _$AddDonationRecordSuccessCopyWithImpl;
@useResult
$Res call({
 AddDonationRecordResponseModel response
});




}
/// @nodoc
class _$AddDonationRecordSuccessCopyWithImpl<$Res>
    implements $AddDonationRecordSuccessCopyWith<$Res> {
  _$AddDonationRecordSuccessCopyWithImpl(this._self, this._then);

  final AddDonationRecordSuccess _self;
  final $Res Function(AddDonationRecordSuccess) _then;

/// Create a copy of AddDonationRecordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(AddDonationRecordSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AddDonationRecordResponseModel,
  ));
}


}

/// @nodoc


class AddDonationRecordError implements AddDonationRecordState {
  const AddDonationRecordError(this.message);
  

 final  String message;

/// Create a copy of AddDonationRecordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddDonationRecordErrorCopyWith<AddDonationRecordError> get copyWith => _$AddDonationRecordErrorCopyWithImpl<AddDonationRecordError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDonationRecordError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddDonationRecordState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddDonationRecordErrorCopyWith<$Res> implements $AddDonationRecordStateCopyWith<$Res> {
  factory $AddDonationRecordErrorCopyWith(AddDonationRecordError value, $Res Function(AddDonationRecordError) _then) = _$AddDonationRecordErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AddDonationRecordErrorCopyWithImpl<$Res>
    implements $AddDonationRecordErrorCopyWith<$Res> {
  _$AddDonationRecordErrorCopyWithImpl(this._self, this._then);

  final AddDonationRecordError _self;
  final $Res Function(AddDonationRecordError) _then;

/// Create a copy of AddDonationRecordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AddDonationRecordError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
