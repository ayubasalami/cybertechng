import 'package:freezed_annotation/freezed_annotation.dart';

import 'featured_meal_model.dart';

part 'meal_response.freezed.dart';
part 'meal_response.g.dart';

@freezed
abstract class MealResponse with _$MealResponse {
  const factory MealResponse({List<Meal>? meals}) = _MealResponse;

  factory MealResponse.fromJson(Map<String, dynamic> json) =>
      _$MealResponseFromJson(json);
}
