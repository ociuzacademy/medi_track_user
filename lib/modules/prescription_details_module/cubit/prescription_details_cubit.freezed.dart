// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrescriptionDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrescriptionDetailsState()';
}


}

/// @nodoc
class $PrescriptionDetailsStateCopyWith<$Res>  {
$PrescriptionDetailsStateCopyWith(PrescriptionDetailsState _, $Res Function(PrescriptionDetailsState) __);
}


/// Adds pattern-matching-related methods to [PrescriptionDetailsState].
extension PrescriptionDetailsStatePatterns on PrescriptionDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PrescriptionDetailsInitial value)?  initial,TResult Function( PrescriptionDetailsLoading value)?  loading,TResult Function( PrescriptionDetailsSuccess value)?  success,TResult Function( PrescriptionDetailsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PrescriptionDetailsInitial() when initial != null:
return initial(_that);case PrescriptionDetailsLoading() when loading != null:
return loading(_that);case PrescriptionDetailsSuccess() when success != null:
return success(_that);case PrescriptionDetailsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PrescriptionDetailsInitial value)  initial,required TResult Function( PrescriptionDetailsLoading value)  loading,required TResult Function( PrescriptionDetailsSuccess value)  success,required TResult Function( PrescriptionDetailsError value)  error,}){
final _that = this;
switch (_that) {
case PrescriptionDetailsInitial():
return initial(_that);case PrescriptionDetailsLoading():
return loading(_that);case PrescriptionDetailsSuccess():
return success(_that);case PrescriptionDetailsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PrescriptionDetailsInitial value)?  initial,TResult? Function( PrescriptionDetailsLoading value)?  loading,TResult? Function( PrescriptionDetailsSuccess value)?  success,TResult? Function( PrescriptionDetailsError value)?  error,}){
final _that = this;
switch (_that) {
case PrescriptionDetailsInitial() when initial != null:
return initial(_that);case PrescriptionDetailsLoading() when loading != null:
return loading(_that);case PrescriptionDetailsSuccess() when success != null:
return success(_that);case PrescriptionDetailsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( PrescriptionDetailsModel data)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PrescriptionDetailsInitial() when initial != null:
return initial();case PrescriptionDetailsLoading() when loading != null:
return loading();case PrescriptionDetailsSuccess() when success != null:
return success(_that.data);case PrescriptionDetailsError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( PrescriptionDetailsModel data)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case PrescriptionDetailsInitial():
return initial();case PrescriptionDetailsLoading():
return loading();case PrescriptionDetailsSuccess():
return success(_that.data);case PrescriptionDetailsError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( PrescriptionDetailsModel data)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case PrescriptionDetailsInitial() when initial != null:
return initial();case PrescriptionDetailsLoading() when loading != null:
return loading();case PrescriptionDetailsSuccess() when success != null:
return success(_that.data);case PrescriptionDetailsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PrescriptionDetailsInitial implements PrescriptionDetailsState {
  const PrescriptionDetailsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrescriptionDetailsState.initial()';
}


}




/// @nodoc


class PrescriptionDetailsLoading implements PrescriptionDetailsState {
  const PrescriptionDetailsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrescriptionDetailsState.loading()';
}


}




/// @nodoc


class PrescriptionDetailsSuccess implements PrescriptionDetailsState {
  const PrescriptionDetailsSuccess(this.data);
  

 final  PrescriptionDetailsModel data;

/// Create a copy of PrescriptionDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrescriptionDetailsSuccessCopyWith<PrescriptionDetailsSuccess> get copyWith => _$PrescriptionDetailsSuccessCopyWithImpl<PrescriptionDetailsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionDetailsSuccess&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PrescriptionDetailsState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $PrescriptionDetailsSuccessCopyWith<$Res> implements $PrescriptionDetailsStateCopyWith<$Res> {
  factory $PrescriptionDetailsSuccessCopyWith(PrescriptionDetailsSuccess value, $Res Function(PrescriptionDetailsSuccess) _then) = _$PrescriptionDetailsSuccessCopyWithImpl;
@useResult
$Res call({
 PrescriptionDetailsModel data
});




}
/// @nodoc
class _$PrescriptionDetailsSuccessCopyWithImpl<$Res>
    implements $PrescriptionDetailsSuccessCopyWith<$Res> {
  _$PrescriptionDetailsSuccessCopyWithImpl(this._self, this._then);

  final PrescriptionDetailsSuccess _self;
  final $Res Function(PrescriptionDetailsSuccess) _then;

/// Create a copy of PrescriptionDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(PrescriptionDetailsSuccess(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PrescriptionDetailsModel,
  ));
}


}

/// @nodoc


class PrescriptionDetailsError implements PrescriptionDetailsState {
  const PrescriptionDetailsError(this.message);
  

 final  String message;

/// Create a copy of PrescriptionDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrescriptionDetailsErrorCopyWith<PrescriptionDetailsError> get copyWith => _$PrescriptionDetailsErrorCopyWithImpl<PrescriptionDetailsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionDetailsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PrescriptionDetailsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PrescriptionDetailsErrorCopyWith<$Res> implements $PrescriptionDetailsStateCopyWith<$Res> {
  factory $PrescriptionDetailsErrorCopyWith(PrescriptionDetailsError value, $Res Function(PrescriptionDetailsError) _then) = _$PrescriptionDetailsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PrescriptionDetailsErrorCopyWithImpl<$Res>
    implements $PrescriptionDetailsErrorCopyWith<$Res> {
  _$PrescriptionDetailsErrorCopyWithImpl(this._self, this._then);

  final PrescriptionDetailsError _self;
  final $Res Function(PrescriptionDetailsError) _then;

/// Create a copy of PrescriptionDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PrescriptionDetailsError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
