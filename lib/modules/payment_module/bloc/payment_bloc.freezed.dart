// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent()';
}


}

/// @nodoc
class $PaymentEventCopyWith<$Res>  {
$PaymentEventCopyWith(PaymentEvent _, $Res Function(PaymentEvent) __);
}


/// Adds pattern-matching-related methods to [PaymentEvent].
extension PaymentEventPatterns on PaymentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _CardPayment value)?  cardPayment,TResult Function( _UPIPayment value)?  upiPayment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _CardPayment() when cardPayment != null:
return cardPayment(_that);case _UPIPayment() when upiPayment != null:
return upiPayment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _CardPayment value)  cardPayment,required TResult Function( _UPIPayment value)  upiPayment,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _CardPayment():
return cardPayment(_that);case _UPIPayment():
return upiPayment(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _CardPayment value)?  cardPayment,TResult? Function( _UPIPayment value)?  upiPayment,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _CardPayment() when cardPayment != null:
return cardPayment(_that);case _UPIPayment() when upiPayment != null:
return upiPayment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( CardPaymentData cardPaymentData)?  cardPayment,TResult Function( UPIPaymentData upiPaymentData)?  upiPayment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _CardPayment() when cardPayment != null:
return cardPayment(_that.cardPaymentData);case _UPIPayment() when upiPayment != null:
return upiPayment(_that.upiPaymentData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( CardPaymentData cardPaymentData)  cardPayment,required TResult Function( UPIPaymentData upiPaymentData)  upiPayment,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _CardPayment():
return cardPayment(_that.cardPaymentData);case _UPIPayment():
return upiPayment(_that.upiPaymentData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( CardPaymentData cardPaymentData)?  cardPayment,TResult? Function( UPIPaymentData upiPaymentData)?  upiPayment,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _CardPayment() when cardPayment != null:
return cardPayment(_that.cardPaymentData);case _UPIPayment() when upiPayment != null:
return upiPayment(_that.upiPaymentData);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements PaymentEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent.started()';
}


}




/// @nodoc


class _CardPayment implements PaymentEvent {
  const _CardPayment(this.cardPaymentData);
  

 final  CardPaymentData cardPaymentData;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardPaymentCopyWith<_CardPayment> get copyWith => __$CardPaymentCopyWithImpl<_CardPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardPayment&&(identical(other.cardPaymentData, cardPaymentData) || other.cardPaymentData == cardPaymentData));
}


@override
int get hashCode => Object.hash(runtimeType,cardPaymentData);

@override
String toString() {
  return 'PaymentEvent.cardPayment(cardPaymentData: $cardPaymentData)';
}


}

/// @nodoc
abstract mixin class _$CardPaymentCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$CardPaymentCopyWith(_CardPayment value, $Res Function(_CardPayment) _then) = __$CardPaymentCopyWithImpl;
@useResult
$Res call({
 CardPaymentData cardPaymentData
});




}
/// @nodoc
class __$CardPaymentCopyWithImpl<$Res>
    implements _$CardPaymentCopyWith<$Res> {
  __$CardPaymentCopyWithImpl(this._self, this._then);

  final _CardPayment _self;
  final $Res Function(_CardPayment) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cardPaymentData = null,}) {
  return _then(_CardPayment(
null == cardPaymentData ? _self.cardPaymentData : cardPaymentData // ignore: cast_nullable_to_non_nullable
as CardPaymentData,
  ));
}


}

/// @nodoc


class _UPIPayment implements PaymentEvent {
  const _UPIPayment(this.upiPaymentData);
  

 final  UPIPaymentData upiPaymentData;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UPIPaymentCopyWith<_UPIPayment> get copyWith => __$UPIPaymentCopyWithImpl<_UPIPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UPIPayment&&(identical(other.upiPaymentData, upiPaymentData) || other.upiPaymentData == upiPaymentData));
}


@override
int get hashCode => Object.hash(runtimeType,upiPaymentData);

@override
String toString() {
  return 'PaymentEvent.upiPayment(upiPaymentData: $upiPaymentData)';
}


}

/// @nodoc
abstract mixin class _$UPIPaymentCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$UPIPaymentCopyWith(_UPIPayment value, $Res Function(_UPIPayment) _then) = __$UPIPaymentCopyWithImpl;
@useResult
$Res call({
 UPIPaymentData upiPaymentData
});




}
/// @nodoc
class __$UPIPaymentCopyWithImpl<$Res>
    implements _$UPIPaymentCopyWith<$Res> {
  __$UPIPaymentCopyWithImpl(this._self, this._then);

  final _UPIPayment _self;
  final $Res Function(_UPIPayment) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? upiPaymentData = null,}) {
  return _then(_UPIPayment(
null == upiPaymentData ? _self.upiPaymentData : upiPaymentData // ignore: cast_nullable_to_non_nullable
as UPIPaymentData,
  ));
}


}

/// @nodoc
mixin _$PaymentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState()';
}


}

/// @nodoc
class $PaymentStateCopyWith<$Res>  {
$PaymentStateCopyWith(PaymentState _, $Res Function(PaymentState) __);
}


/// Adds pattern-matching-related methods to [PaymentState].
extension PaymentStatePatterns on PaymentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentInitial value)?  initial,TResult Function( PaymentLoading value)?  loading,TResult Function( CardPaymentSuccess value)?  cardPaymentSuccess,TResult Function( UPIPaymentSuccess value)?  upiPaymentSuccess,TResult Function( PaymentError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentInitial() when initial != null:
return initial(_that);case PaymentLoading() when loading != null:
return loading(_that);case CardPaymentSuccess() when cardPaymentSuccess != null:
return cardPaymentSuccess(_that);case UPIPaymentSuccess() when upiPaymentSuccess != null:
return upiPaymentSuccess(_that);case PaymentError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentInitial value)  initial,required TResult Function( PaymentLoading value)  loading,required TResult Function( CardPaymentSuccess value)  cardPaymentSuccess,required TResult Function( UPIPaymentSuccess value)  upiPaymentSuccess,required TResult Function( PaymentError value)  error,}){
final _that = this;
switch (_that) {
case PaymentInitial():
return initial(_that);case PaymentLoading():
return loading(_that);case CardPaymentSuccess():
return cardPaymentSuccess(_that);case UPIPaymentSuccess():
return upiPaymentSuccess(_that);case PaymentError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentInitial value)?  initial,TResult? Function( PaymentLoading value)?  loading,TResult? Function( CardPaymentSuccess value)?  cardPaymentSuccess,TResult? Function( UPIPaymentSuccess value)?  upiPaymentSuccess,TResult? Function( PaymentError value)?  error,}){
final _that = this;
switch (_that) {
case PaymentInitial() when initial != null:
return initial(_that);case PaymentLoading() when loading != null:
return loading(_that);case CardPaymentSuccess() when cardPaymentSuccess != null:
return cardPaymentSuccess(_that);case UPIPaymentSuccess() when upiPaymentSuccess != null:
return upiPaymentSuccess(_that);case PaymentError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CardPaymentResponseModel response)?  cardPaymentSuccess,TResult Function( UPIPaymentResponseModel response)?  upiPaymentSuccess,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentInitial() when initial != null:
return initial();case PaymentLoading() when loading != null:
return loading();case CardPaymentSuccess() when cardPaymentSuccess != null:
return cardPaymentSuccess(_that.response);case UPIPaymentSuccess() when upiPaymentSuccess != null:
return upiPaymentSuccess(_that.response);case PaymentError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CardPaymentResponseModel response)  cardPaymentSuccess,required TResult Function( UPIPaymentResponseModel response)  upiPaymentSuccess,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case PaymentInitial():
return initial();case PaymentLoading():
return loading();case CardPaymentSuccess():
return cardPaymentSuccess(_that.response);case UPIPaymentSuccess():
return upiPaymentSuccess(_that.response);case PaymentError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CardPaymentResponseModel response)?  cardPaymentSuccess,TResult? Function( UPIPaymentResponseModel response)?  upiPaymentSuccess,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case PaymentInitial() when initial != null:
return initial();case PaymentLoading() when loading != null:
return loading();case CardPaymentSuccess() when cardPaymentSuccess != null:
return cardPaymentSuccess(_that.response);case UPIPaymentSuccess() when upiPaymentSuccess != null:
return upiPaymentSuccess(_that.response);case PaymentError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class PaymentInitial implements PaymentState {
  const PaymentInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState.initial()';
}


}




/// @nodoc


class PaymentLoading implements PaymentState {
  const PaymentLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState.loading()';
}


}




/// @nodoc


class CardPaymentSuccess implements PaymentState {
  const CardPaymentSuccess(this.response);
  

 final  CardPaymentResponseModel response;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardPaymentSuccessCopyWith<CardPaymentSuccess> get copyWith => _$CardPaymentSuccessCopyWithImpl<CardPaymentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardPaymentSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'PaymentState.cardPaymentSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class $CardPaymentSuccessCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory $CardPaymentSuccessCopyWith(CardPaymentSuccess value, $Res Function(CardPaymentSuccess) _then) = _$CardPaymentSuccessCopyWithImpl;
@useResult
$Res call({
 CardPaymentResponseModel response
});




}
/// @nodoc
class _$CardPaymentSuccessCopyWithImpl<$Res>
    implements $CardPaymentSuccessCopyWith<$Res> {
  _$CardPaymentSuccessCopyWithImpl(this._self, this._then);

  final CardPaymentSuccess _self;
  final $Res Function(CardPaymentSuccess) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(CardPaymentSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as CardPaymentResponseModel,
  ));
}


}

/// @nodoc


class UPIPaymentSuccess implements PaymentState {
  const UPIPaymentSuccess(this.response);
  

 final  UPIPaymentResponseModel response;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UPIPaymentSuccessCopyWith<UPIPaymentSuccess> get copyWith => _$UPIPaymentSuccessCopyWithImpl<UPIPaymentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UPIPaymentSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'PaymentState.upiPaymentSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class $UPIPaymentSuccessCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory $UPIPaymentSuccessCopyWith(UPIPaymentSuccess value, $Res Function(UPIPaymentSuccess) _then) = _$UPIPaymentSuccessCopyWithImpl;
@useResult
$Res call({
 UPIPaymentResponseModel response
});




}
/// @nodoc
class _$UPIPaymentSuccessCopyWithImpl<$Res>
    implements $UPIPaymentSuccessCopyWith<$Res> {
  _$UPIPaymentSuccessCopyWithImpl(this._self, this._then);

  final UPIPaymentSuccess _self;
  final $Res Function(UPIPaymentSuccess) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(UPIPaymentSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as UPIPaymentResponseModel,
  ));
}


}

/// @nodoc


class PaymentError implements PaymentState {
  const PaymentError(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentErrorCopyWith<PaymentError> get copyWith => _$PaymentErrorCopyWithImpl<PaymentError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'PaymentState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PaymentErrorCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory $PaymentErrorCopyWith(PaymentError value, $Res Function(PaymentError) _then) = _$PaymentErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$PaymentErrorCopyWithImpl<$Res>
    implements $PaymentErrorCopyWith<$Res> {
  _$PaymentErrorCopyWithImpl(this._self, this._then);

  final PaymentError _self;
  final $Res Function(PaymentError) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(PaymentError(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
