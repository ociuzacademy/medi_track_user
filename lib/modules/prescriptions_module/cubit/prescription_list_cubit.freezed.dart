// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrescriptionListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrescriptionListState()';
}


}

/// @nodoc
class $PrescriptionListStateCopyWith<$Res>  {
$PrescriptionListStateCopyWith(PrescriptionListState _, $Res Function(PrescriptionListState) __);
}


/// Adds pattern-matching-related methods to [PrescriptionListState].
extension PrescriptionListStatePatterns on PrescriptionListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PrescriptionListInitial value)?  initial,TResult Function( PrescriptionListLoading value)?  loading,TResult Function( PrescriptionListSuccess value)?  success,TResult Function( PrescriptionListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PrescriptionListInitial() when initial != null:
return initial(_that);case PrescriptionListLoading() when loading != null:
return loading(_that);case PrescriptionListSuccess() when success != null:
return success(_that);case PrescriptionListError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PrescriptionListInitial value)  initial,required TResult Function( PrescriptionListLoading value)  loading,required TResult Function( PrescriptionListSuccess value)  success,required TResult Function( PrescriptionListError value)  error,}){
final _that = this;
switch (_that) {
case PrescriptionListInitial():
return initial(_that);case PrescriptionListLoading():
return loading(_that);case PrescriptionListSuccess():
return success(_that);case PrescriptionListError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PrescriptionListInitial value)?  initial,TResult? Function( PrescriptionListLoading value)?  loading,TResult? Function( PrescriptionListSuccess value)?  success,TResult? Function( PrescriptionListError value)?  error,}){
final _that = this;
switch (_that) {
case PrescriptionListInitial() when initial != null:
return initial(_that);case PrescriptionListLoading() when loading != null:
return loading(_that);case PrescriptionListSuccess() when success != null:
return success(_that);case PrescriptionListError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( PrescriptionListModel data)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PrescriptionListInitial() when initial != null:
return initial();case PrescriptionListLoading() when loading != null:
return loading();case PrescriptionListSuccess() when success != null:
return success(_that.data);case PrescriptionListError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( PrescriptionListModel data)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case PrescriptionListInitial():
return initial();case PrescriptionListLoading():
return loading();case PrescriptionListSuccess():
return success(_that.data);case PrescriptionListError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( PrescriptionListModel data)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case PrescriptionListInitial() when initial != null:
return initial();case PrescriptionListLoading() when loading != null:
return loading();case PrescriptionListSuccess() when success != null:
return success(_that.data);case PrescriptionListError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PrescriptionListInitial implements PrescriptionListState {
  const PrescriptionListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrescriptionListState.initial()';
}


}




/// @nodoc


class PrescriptionListLoading implements PrescriptionListState {
  const PrescriptionListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PrescriptionListState.loading()';
}


}




/// @nodoc


class PrescriptionListSuccess implements PrescriptionListState {
  const PrescriptionListSuccess(this.data);
  

 final  PrescriptionListModel data;

/// Create a copy of PrescriptionListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrescriptionListSuccessCopyWith<PrescriptionListSuccess> get copyWith => _$PrescriptionListSuccessCopyWithImpl<PrescriptionListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionListSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'PrescriptionListState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $PrescriptionListSuccessCopyWith<$Res> implements $PrescriptionListStateCopyWith<$Res> {
  factory $PrescriptionListSuccessCopyWith(PrescriptionListSuccess value, $Res Function(PrescriptionListSuccess) _then) = _$PrescriptionListSuccessCopyWithImpl;
@useResult
$Res call({
 PrescriptionListModel data
});




}
/// @nodoc
class _$PrescriptionListSuccessCopyWithImpl<$Res>
    implements $PrescriptionListSuccessCopyWith<$Res> {
  _$PrescriptionListSuccessCopyWithImpl(this._self, this._then);

  final PrescriptionListSuccess _self;
  final $Res Function(PrescriptionListSuccess) _then;

/// Create a copy of PrescriptionListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(PrescriptionListSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PrescriptionListModel,
  ));
}


}

/// @nodoc


class PrescriptionListError implements PrescriptionListState {
  const PrescriptionListError(this.message);
  

 final  String message;

/// Create a copy of PrescriptionListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrescriptionListErrorCopyWith<PrescriptionListError> get copyWith => _$PrescriptionListErrorCopyWithImpl<PrescriptionListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrescriptionListError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PrescriptionListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PrescriptionListErrorCopyWith<$Res> implements $PrescriptionListStateCopyWith<$Res> {
  factory $PrescriptionListErrorCopyWith(PrescriptionListError value, $Res Function(PrescriptionListError) _then) = _$PrescriptionListErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PrescriptionListErrorCopyWithImpl<$Res>
    implements $PrescriptionListErrorCopyWith<$Res> {
  _$PrescriptionListErrorCopyWithImpl(this._self, this._then);

  final PrescriptionListError _self;
  final $Res Function(PrescriptionListError) _then;

/// Create a copy of PrescriptionListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PrescriptionListError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
