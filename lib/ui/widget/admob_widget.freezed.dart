// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admob_widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdState {

 bool get enableAd; BannerAd? get bannerAd;
/// Create a copy of AdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdStateCopyWith<AdState> get copyWith => _$AdStateCopyWithImpl<AdState>(this as AdState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdState&&(identical(other.enableAd, enableAd) || other.enableAd == enableAd)&&(identical(other.bannerAd, bannerAd) || other.bannerAd == bannerAd));
}


@override
int get hashCode => Object.hash(runtimeType,enableAd,bannerAd);

@override
String toString() {
  return 'AdState(enableAd: $enableAd, bannerAd: $bannerAd)';
}


}

/// @nodoc
abstract mixin class $AdStateCopyWith<$Res>  {
  factory $AdStateCopyWith(AdState value, $Res Function(AdState) _then) = _$AdStateCopyWithImpl;
@useResult
$Res call({
 bool enableAd, BannerAd? bannerAd
});




}
/// @nodoc
class _$AdStateCopyWithImpl<$Res>
    implements $AdStateCopyWith<$Res> {
  _$AdStateCopyWithImpl(this._self, this._then);

  final AdState _self;
  final $Res Function(AdState) _then;

/// Create a copy of AdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enableAd = null,Object? bannerAd = freezed,}) {
  return _then(_self.copyWith(
enableAd: null == enableAd ? _self.enableAd : enableAd // ignore: cast_nullable_to_non_nullable
as bool,bannerAd: freezed == bannerAd ? _self.bannerAd : bannerAd // ignore: cast_nullable_to_non_nullable
as BannerAd?,
  ));
}

}


/// @nodoc


class _AdState implements AdState {
  const _AdState({this.enableAd = true, this.bannerAd});
  

@override@JsonKey() final  bool enableAd;
@override final  BannerAd? bannerAd;

/// Create a copy of AdState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdStateCopyWith<_AdState> get copyWith => __$AdStateCopyWithImpl<_AdState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdState&&(identical(other.enableAd, enableAd) || other.enableAd == enableAd)&&(identical(other.bannerAd, bannerAd) || other.bannerAd == bannerAd));
}


@override
int get hashCode => Object.hash(runtimeType,enableAd,bannerAd);

@override
String toString() {
  return 'AdState(enableAd: $enableAd, bannerAd: $bannerAd)';
}


}

/// @nodoc
abstract mixin class _$AdStateCopyWith<$Res> implements $AdStateCopyWith<$Res> {
  factory _$AdStateCopyWith(_AdState value, $Res Function(_AdState) _then) = __$AdStateCopyWithImpl;
@override @useResult
$Res call({
 bool enableAd, BannerAd? bannerAd
});




}
/// @nodoc
class __$AdStateCopyWithImpl<$Res>
    implements _$AdStateCopyWith<$Res> {
  __$AdStateCopyWithImpl(this._self, this._then);

  final _AdState _self;
  final $Res Function(_AdState) _then;

/// Create a copy of AdState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enableAd = null,Object? bannerAd = freezed,}) {
  return _then(_AdState(
enableAd: null == enableAd ? _self.enableAd : enableAd // ignore: cast_nullable_to_non_nullable
as bool,bannerAd: freezed == bannerAd ? _self.bannerAd : bannerAd // ignore: cast_nullable_to_non_nullable
as BannerAd?,
  ));
}


}

// dart format on
