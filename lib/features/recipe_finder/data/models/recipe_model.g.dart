// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => _RecipeModel(
  id: json['idMeal'] as String,
  title: json['strMeal'] as String,
  category: json['strCategory'] as String?,
  imageUrl: json['strMealThumb'] as String?,
  instructions: json['strInstructions'] as String?,
  area: json['strArea'] as String?,
  tags: json['strTags'] as String?,
);

Map<String, dynamic> _$RecipeModelToJson(_RecipeModel instance) =>
    <String, dynamic>{
      'idMeal': instance.id,
      'strMeal': instance.title,
      'strCategory': instance.category,
      'strMealThumb': instance.imageUrl,
      'strInstructions': instance.instructions,
      'strArea': instance.area,
      'strTags': instance.tags,
    };
