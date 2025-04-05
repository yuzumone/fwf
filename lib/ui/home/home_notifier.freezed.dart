// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 int get pageIndex; List<Event> get events; AsyncValue<List<Shop>> get shops; Event? get selectedEvent;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex)&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.shops, shops) || other.shops == shops)&&(identical(other.selectedEvent, selectedEvent) || other.selectedEvent == selectedEvent));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex,const DeepCollectionEquality().hash(events),shops,selectedEvent);

@override
String toString() {
  return 'HomeState(pageIndex: $pageIndex, events: $events, shops: $shops, selectedEvent: $selectedEvent)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 int pageIndex, List<Event> events, AsyncValue<List<Shop>> shops, Event? selectedEvent
});


$EventCopyWith<$Res>? get selectedEvent;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageIndex = null,Object? events = null,Object? shops = null,Object? selectedEvent = freezed,}) {
  return _then(_self.copyWith(
pageIndex: null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<Event>,shops: null == shops ? _self.shops : shops // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Shop>>,selectedEvent: freezed == selectedEvent ? _self.selectedEvent : selectedEvent // ignore: cast_nullable_to_non_nullable
as Event?,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventCopyWith<$Res>? get selectedEvent {
    if (_self.selectedEvent == null) {
    return null;
  }

  return $EventCopyWith<$Res>(_self.selectedEvent!, (value) {
    return _then(_self.copyWith(selectedEvent: value));
  });
}
}


/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.pageIndex = 0, final  List<Event> events = const <Event>[], this.shops = const AsyncValue<List<Shop>>.loading(), this.selectedEvent}): _events = events;
  

@override@JsonKey() final  int pageIndex;
 final  List<Event> _events;
@override@JsonKey() List<Event> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override@JsonKey() final  AsyncValue<List<Shop>> shops;
@override final  Event? selectedEvent;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex)&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.shops, shops) || other.shops == shops)&&(identical(other.selectedEvent, selectedEvent) || other.selectedEvent == selectedEvent));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex,const DeepCollectionEquality().hash(_events),shops,selectedEvent);

@override
String toString() {
  return 'HomeState(pageIndex: $pageIndex, events: $events, shops: $shops, selectedEvent: $selectedEvent)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 int pageIndex, List<Event> events, AsyncValue<List<Shop>> shops, Event? selectedEvent
});


@override $EventCopyWith<$Res>? get selectedEvent;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageIndex = null,Object? events = null,Object? shops = null,Object? selectedEvent = freezed,}) {
  return _then(_HomeState(
pageIndex: null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<Event>,shops: null == shops ? _self.shops : shops // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Shop>>,selectedEvent: freezed == selectedEvent ? _self.selectedEvent : selectedEvent // ignore: cast_nullable_to_non_nullable
as Event?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventCopyWith<$Res>? get selectedEvent {
    if (_self.selectedEvent == null) {
    return null;
  }

  return $EventCopyWith<$Res>(_self.selectedEvent!, (value) {
    return _then(_self.copyWith(selectedEvent: value));
  });
}
}

// dart format on
