// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MealResponse _$MealResponseFromJson(Map<String, dynamic> json) =>
    _MealResponse(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealResponseToJson(_MealResponse instance) =>
    <String, dynamic>{'meals': instance.meals};
