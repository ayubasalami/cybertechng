// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeModel {

@JsonKey(name: 'idMeal') String get id;@JsonKey(name: 'strMeal') String get title;@JsonKey(name: 'strCategory') String? get category;@JsonKey(name: 'strMealThumb') String? get imageUrl;@JsonKey(name: 'strInstructions') String? get instructions;@JsonKey(name: 'strArea') String? get area;@JsonKey(name: 'strTags') String? get tags;
/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<RecipeModel> get copyWith => _$RecipeModelCopyWithImpl<RecipeModel>(this as RecipeModel, _$identity);

  /// Serializes this RecipeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.category, category) || other.category == category)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.area, area) || other.area == area)&&(identical(other.tags, tags) || other.tags == tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,category,imageUrl,instructions,area,tags);

@override
String toString() {
  return 'RecipeModel(id: $id, title: $title, category: $category, imageUrl: $imageUrl, instructions: $instructions, area: $area, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $RecipeModelCopyWith<$Res>  {
  factory $RecipeModelCopyWith(RecipeModel value, $Res Function(RecipeModel) _then) = _$RecipeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'idMeal') String id,@JsonKey(name: 'strMeal') String title,@JsonKey(name: 'strCategory') String? category,@JsonKey(name: 'strMealThumb') String? imageUrl,@JsonKey(name: 'strInstructions') String? instructions,@JsonKey(name: 'strArea') String? area,@JsonKey(name: 'strTags') String? tags
});




}
/// @nodoc
class _$RecipeModelCopyWithImpl<$Res>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._self, this._then);

  final RecipeModel _self;
  final $Res Function(RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? category = freezed,Object? imageUrl = freezed,Object? instructions = freezed,Object? area = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeModel].
extension RecipeModelPatterns on RecipeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeModel value)  $default,){
final _that = this;
switch (_that) {
case _RecipeModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'idMeal')  String id, @JsonKey(name: 'strMeal')  String title, @JsonKey(name: 'strCategory')  String? category, @JsonKey(name: 'strMealThumb')  String? imageUrl, @JsonKey(name: 'strInstructions')  String? instructions, @JsonKey(name: 'strArea')  String? area, @JsonKey(name: 'strTags')  String? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that.id,_that.title,_that.category,_that.imageUrl,_that.instructions,_that.area,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'idMeal')  String id, @JsonKey(name: 'strMeal')  String title, @JsonKey(name: 'strCategory')  String? category, @JsonKey(name: 'strMealThumb')  String? imageUrl, @JsonKey(name: 'strInstructions')  String? instructions, @JsonKey(name: 'strArea')  String? area, @JsonKey(name: 'strTags')  String? tags)  $default,) {final _that = this;
switch (_that) {
case _RecipeModel():
return $default(_that.id,_that.title,_that.category,_that.imageUrl,_that.instructions,_that.area,_that.tags);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'idMeal')  String id, @JsonKey(name: 'strMeal')  String title, @JsonKey(name: 'strCategory')  String? category, @JsonKey(name: 'strMealThumb')  String? imageUrl, @JsonKey(name: 'strInstructions')  String? instructions, @JsonKey(name: 'strArea')  String? area, @JsonKey(name: 'strTags')  String? tags)?  $default,) {final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that.id,_that.title,_that.category,_that.imageUrl,_that.instructions,_that.area,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeModel implements RecipeModel {
  const _RecipeModel({@JsonKey(name: 'idMeal') required this.id, @JsonKey(name: 'strMeal') required this.title, @JsonKey(name: 'strCategory') this.category, @JsonKey(name: 'strMealThumb') this.imageUrl, @JsonKey(name: 'strInstructions') this.instructions, @JsonKey(name: 'strArea') this.area, @JsonKey(name: 'strTags') this.tags});
  factory _RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

@override@JsonKey(name: 'idMeal') final  String id;
@override@JsonKey(name: 'strMeal') final  String title;
@override@JsonKey(name: 'strCategory') final  String? category;
@override@JsonKey(name: 'strMealThumb') final  String? imageUrl;
@override@JsonKey(name: 'strInstructions') final  String? instructions;
@override@JsonKey(name: 'strArea') final  String? area;
@override@JsonKey(name: 'strTags') final  String? tags;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeModelCopyWith<_RecipeModel> get copyWith => __$RecipeModelCopyWithImpl<_RecipeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.category, category) || other.category == category)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.area, area) || other.area == area)&&(identical(other.tags, tags) || other.tags == tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,category,imageUrl,instructions,area,tags);

@override
String toString() {
  return 'RecipeModel(id: $id, title: $title, category: $category, imageUrl: $imageUrl, instructions: $instructions, area: $area, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$RecipeModelCopyWith<$Res> implements $RecipeModelCopyWith<$Res> {
  factory _$RecipeModelCopyWith(_RecipeModel value, $Res Function(_RecipeModel) _then) = __$RecipeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'idMeal') String id,@JsonKey(name: 'strMeal') String title,@JsonKey(name: 'strCategory') String? category,@JsonKey(name: 'strMealThumb') String? imageUrl,@JsonKey(name: 'strInstructions') String? instructions,@JsonKey(name: 'strArea') String? area,@JsonKey(name: 'strTags') String? tags
});




}
/// @nodoc
class __$RecipeModelCopyWithImpl<$Res>
    implements _$RecipeModelCopyWith<$Res> {
  __$RecipeModelCopyWithImpl(this._self, this._then);

  final _RecipeModel _self;
  final $Res Function(_RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? category = freezed,Object? imageUrl = freezed,Object? instructions = freezed,Object? area = freezed,Object? tags = freezed,}) {
  return _then(_RecipeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
