// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DepartmentsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DepartmentsState()';
}


}

/// @nodoc
class $DepartmentsStateCopyWith<$Res>  {
$DepartmentsStateCopyWith(DepartmentsState _, $Res Function(DepartmentsState) __);
}


/// Adds pattern-matching-related methods to [DepartmentsState].
extension DepartmentsStatePatterns on DepartmentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DepartmentsInitial value)?  initial,TResult Function( DepartmentsLoading value)?  loading,TResult Function( DepartmentsSuccess value)?  success,TResult Function( DepartmentsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DepartmentsInitial() when initial != null:
return initial(_that);case DepartmentsLoading() when loading != null:
return loading(_that);case DepartmentsSuccess() when success != null:
return success(_that);case DepartmentsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DepartmentsInitial value)  initial,required TResult Function( DepartmentsLoading value)  loading,required TResult Function( DepartmentsSuccess value)  success,required TResult Function( DepartmentsError value)  error,}){
final _that = this;
switch (_that) {
case DepartmentsInitial():
return initial(_that);case DepartmentsLoading():
return loading(_that);case DepartmentsSuccess():
return success(_that);case DepartmentsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DepartmentsInitial value)?  initial,TResult? Function( DepartmentsLoading value)?  loading,TResult? Function( DepartmentsSuccess value)?  success,TResult? Function( DepartmentsError value)?  error,}){
final _that = this;
switch (_that) {
case DepartmentsInitial() when initial != null:
return initial(_that);case DepartmentsLoading() when loading != null:
return loading(_that);case DepartmentsSuccess() when success != null:
return success(_that);case DepartmentsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DepartmentsModel departments)?  success,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DepartmentsInitial() when initial != null:
return initial();case DepartmentsLoading() when loading != null:
return loading();case DepartmentsSuccess() when success != null:
return success(_that.departments);case DepartmentsError() when error != null:
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DepartmentsModel departments)  success,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case DepartmentsInitial():
return initial();case DepartmentsLoading():
return loading();case DepartmentsSuccess():
return success(_that.departments);case DepartmentsError():
return error(_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DepartmentsModel departments)?  success,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case DepartmentsInitial() when initial != null:
return initial();case DepartmentsLoading() when loading != null:
return loading();case DepartmentsSuccess() when success != null:
return success(_that.departments);case DepartmentsError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class DepartmentsInitial implements DepartmentsState {
  const DepartmentsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DepartmentsState.initial()';
}


}




/// @nodoc


class DepartmentsLoading implements DepartmentsState {
  const DepartmentsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DepartmentsState.loading()';
}


}




/// @nodoc


class DepartmentsSuccess implements DepartmentsState {
  const DepartmentsSuccess(this.departments);
  

 final  DepartmentsModel departments;

/// Create a copy of DepartmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentsSuccessCopyWith<DepartmentsSuccess> get copyWith => _$DepartmentsSuccessCopyWithImpl<DepartmentsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentsSuccess&&(identical(other.departments, departments) || other.departments == departments));
}


@override
int get hashCode => Object.hash(runtimeType,departments);

@override
String toString() {
  return 'DepartmentsState.success(departments: $departments)';
}


}

/// @nodoc
abstract mixin class $DepartmentsSuccessCopyWith<$Res> implements $DepartmentsStateCopyWith<$Res> {
  factory $DepartmentsSuccessCopyWith(DepartmentsSuccess value, $Res Function(DepartmentsSuccess) _then) = _$DepartmentsSuccessCopyWithImpl;
@useResult
$Res call({
 DepartmentsModel departments
});




}
/// @nodoc
class _$DepartmentsSuccessCopyWithImpl<$Res>
    implements $DepartmentsSuccessCopyWith<$Res> {
  _$DepartmentsSuccessCopyWithImpl(this._self, this._then);

  final DepartmentsSuccess _self;
  final $Res Function(DepartmentsSuccess) _then;

/// Create a copy of DepartmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? departments = null,}) {
  return _then(DepartmentsSuccess(
null == departments ? _self.departments : departments // ignore: cast_nullable_to_non_nullable
as DepartmentsModel,
  ));
}


}

/// @nodoc


class DepartmentsError implements DepartmentsState {
  const DepartmentsError(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of DepartmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentsErrorCopyWith<DepartmentsError> get copyWith => _$DepartmentsErrorCopyWithImpl<DepartmentsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentsError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'DepartmentsState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $DepartmentsErrorCopyWith<$Res> implements $DepartmentsStateCopyWith<$Res> {
  factory $DepartmentsErrorCopyWith(DepartmentsError value, $Res Function(DepartmentsError) _then) = _$DepartmentsErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$DepartmentsErrorCopyWithImpl<$Res>
    implements $DepartmentsErrorCopyWith<$Res> {
  _$DepartmentsErrorCopyWithImpl(this._self, this._then);

  final DepartmentsError _self;
  final $Res Function(DepartmentsError) _then;

/// Create a copy of DepartmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(DepartmentsError(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
