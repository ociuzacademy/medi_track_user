// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donor_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DonorHistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonorHistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DonorHistoryState()';
}


}

/// @nodoc
class $DonorHistoryStateCopyWith<$Res>  {
$DonorHistoryStateCopyWith(DonorHistoryState _, $Res Function(DonorHistoryState) __);
}


/// Adds pattern-matching-related methods to [DonorHistoryState].
extension DonorHistoryStatePatterns on DonorHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DonorHistoryInitial value)?  initial,TResult Function( DonorHistoryLoading value)?  loading,TResult Function( DonorHistorySuccess value)?  success,TResult Function( DonorHistoryEmpty value)?  empty,TResult Function( DonorHistoryError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DonorHistoryInitial() when initial != null:
return initial(_that);case DonorHistoryLoading() when loading != null:
return loading(_that);case DonorHistorySuccess() when success != null:
return success(_that);case DonorHistoryEmpty() when empty != null:
return empty(_that);case DonorHistoryError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DonorHistoryInitial value)  initial,required TResult Function( DonorHistoryLoading value)  loading,required TResult Function( DonorHistorySuccess value)  success,required TResult Function( DonorHistoryEmpty value)  empty,required TResult Function( DonorHistoryError value)  error,}){
final _that = this;
switch (_that) {
case DonorHistoryInitial():
return initial(_that);case DonorHistoryLoading():
return loading(_that);case DonorHistorySuccess():
return success(_that);case DonorHistoryEmpty():
return empty(_that);case DonorHistoryError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DonorHistoryInitial value)?  initial,TResult? Function( DonorHistoryLoading value)?  loading,TResult? Function( DonorHistorySuccess value)?  success,TResult? Function( DonorHistoryEmpty value)?  empty,TResult? Function( DonorHistoryError value)?  error,}){
final _that = this;
switch (_that) {
case DonorHistoryInitial() when initial != null:
return initial(_that);case DonorHistoryLoading() when loading != null:
return loading(_that);case DonorHistorySuccess() when success != null:
return success(_that);case DonorHistoryEmpty() when empty != null:
return empty(_that);case DonorHistoryError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<BloodDonationHistoryModel> bloodDonationHistoryList)?  success,TResult Function()?  empty,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DonorHistoryInitial() when initial != null:
return initial();case DonorHistoryLoading() when loading != null:
return loading();case DonorHistorySuccess() when success != null:
return success(_that.bloodDonationHistoryList);case DonorHistoryEmpty() when empty != null:
return empty();case DonorHistoryError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<BloodDonationHistoryModel> bloodDonationHistoryList)  success,required TResult Function()  empty,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case DonorHistoryInitial():
return initial();case DonorHistoryLoading():
return loading();case DonorHistorySuccess():
return success(_that.bloodDonationHistoryList);case DonorHistoryEmpty():
return empty();case DonorHistoryError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<BloodDonationHistoryModel> bloodDonationHistoryList)?  success,TResult? Function()?  empty,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case DonorHistoryInitial() when initial != null:
return initial();case DonorHistoryLoading() when loading != null:
return loading();case DonorHistorySuccess() when success != null:
return success(_that.bloodDonationHistoryList);case DonorHistoryEmpty() when empty != null:
return empty();case DonorHistoryError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class DonorHistoryInitial implements DonorHistoryState {
  const DonorHistoryInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonorHistoryInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DonorHistoryState.initial()';
}


}




/// @nodoc


class DonorHistoryLoading implements DonorHistoryState {
  const DonorHistoryLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonorHistoryLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DonorHistoryState.loading()';
}


}




/// @nodoc


class DonorHistorySuccess implements DonorHistoryState {
  const DonorHistorySuccess(final  List<BloodDonationHistoryModel> bloodDonationHistoryList): _bloodDonationHistoryList = bloodDonationHistoryList;
  

 final  List<BloodDonationHistoryModel> _bloodDonationHistoryList;
 List<BloodDonationHistoryModel> get bloodDonationHistoryList {
  if (_bloodDonationHistoryList is EqualUnmodifiableListView) return _bloodDonationHistoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bloodDonationHistoryList);
}


/// Create a copy of DonorHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonorHistorySuccessCopyWith<DonorHistorySuccess> get copyWith => _$DonorHistorySuccessCopyWithImpl<DonorHistorySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonorHistorySuccess&&const DeepCollectionEquality().equals(other._bloodDonationHistoryList, _bloodDonationHistoryList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bloodDonationHistoryList));

@override
String toString() {
  return 'DonorHistoryState.success(bloodDonationHistoryList: $bloodDonationHistoryList)';
}


}

/// @nodoc
abstract mixin class $DonorHistorySuccessCopyWith<$Res> implements $DonorHistoryStateCopyWith<$Res> {
  factory $DonorHistorySuccessCopyWith(DonorHistorySuccess value, $Res Function(DonorHistorySuccess) _then) = _$DonorHistorySuccessCopyWithImpl;
@useResult
$Res call({
 List<BloodDonationHistoryModel> bloodDonationHistoryList
});




}
/// @nodoc
class _$DonorHistorySuccessCopyWithImpl<$Res>
    implements $DonorHistorySuccessCopyWith<$Res> {
  _$DonorHistorySuccessCopyWithImpl(this._self, this._then);

  final DonorHistorySuccess _self;
  final $Res Function(DonorHistorySuccess) _then;

/// Create a copy of DonorHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bloodDonationHistoryList = null,}) {
  return _then(DonorHistorySuccess(
null == bloodDonationHistoryList ? _self._bloodDonationHistoryList : bloodDonationHistoryList // ignore: cast_nullable_to_non_nullable
as List<BloodDonationHistoryModel>,
  ));
}


}

/// @nodoc


class DonorHistoryEmpty implements DonorHistoryState {
  const DonorHistoryEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonorHistoryEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DonorHistoryState.empty()';
}


}




/// @nodoc


class DonorHistoryError implements DonorHistoryState {
  const DonorHistoryError(this.message);
  

 final  String message;

/// Create a copy of DonorHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonorHistoryErrorCopyWith<DonorHistoryError> get copyWith => _$DonorHistoryErrorCopyWithImpl<DonorHistoryError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonorHistoryError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DonorHistoryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $DonorHistoryErrorCopyWith<$Res> implements $DonorHistoryStateCopyWith<$Res> {
  factory $DonorHistoryErrorCopyWith(DonorHistoryError value, $Res Function(DonorHistoryError) _then) = _$DonorHistoryErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DonorHistoryErrorCopyWithImpl<$Res>
    implements $DonorHistoryErrorCopyWith<$Res> {
  _$DonorHistoryErrorCopyWithImpl(this._self, this._then);

  final DonorHistoryError _self;
  final $Res Function(DonorHistoryError) _then;

/// Create a copy of DonorHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DonorHistoryError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
