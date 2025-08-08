import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_detail_model.freezed.dart';
part 'meal_detail_model.g.dart';

@freezed
abstract class MealDetailResponse with _$MealDetailResponse {
  const factory MealDetailResponse({List<MealDetail>? meals}) =
      _MealDetailResponse;

  factory MealDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MealDetailResponseFromJson(json);
}

@freezed
abstract class MealDetail with _$MealDetail {
  const factory MealDetail({
    String? idMeal,
    String? strMeal,
    String? strMealAlternate,
    String? strCategory,
    String? strArea,
    String? strInstructions,
    String? strMealThumb,
    String? strTags,
    String? strYoutube,
    String? strIngredient1,
    String? strIngredient2,
    String? strIngredient3,
    String? strIngredient4,
    String? strIngredient5,
    String? strIngredient6,
    String? strIngredient7,
    String? strIngredient8,
    String? strIngredient9,
    String? strIngredient10,
    String? strIngredient11,
    String? strIngredient12,
    String? strIngredient13,
    String? strIngredient14,
    String? strIngredient15,
    String? strIngredient16,
    String? strIngredient17,
    String? strIngredient18,
    String? strIngredient19,
    String? strIngredient20,
    String? strMeasure1,
    String? strMeasure2,
    String? strMeasure3,
    String? strMeasure4,
    String? strMeasure5,
    String? strMeasure6,
    String? strMeasure7,
    String? strMeasure8,
    String? strMeasure9,
    String? strMeasure10,
    String? strMeasure11,
    String? strMeasure12,
    String? strMeasure13,
    String? strMeasure14,
    String? strMeasure15,
    String? strMeasure16,
    String? strMeasure17,
    String? strMeasure18,
    String? strMeasure19,
    String? strMeasure20,
    String? strSource,
    String? strImageSource,
    String? strCreativeCommonsConfirmed,
    String? dateModified,
  }) = _MealDetail;

  factory MealDetail.fromJson(Map<String, dynamic> json) =>
      _$MealDetailFromJson(json);
}

extension MealDetailX on MealDetail {
  List<String> getIngredients() {
    final ingredients = <String?>[
      strIngredient1,
      strIngredient2,
      strIngredient3,
      strIngredient4,
      strIngredient5,
      strIngredient6,
      strIngredient7,
      strIngredient8,
      strIngredient9,
      strIngredient10,
      strIngredient11,
      strIngredient12,
      strIngredient13,
      strIngredient14,
      strIngredient15,
      strIngredient16,
      strIngredient17,
      strIngredient18,
      strIngredient19,
      strIngredient20,
    ];

    final measures = <String?>[
      strMeasure1,
      strMeasure2,
      strMeasure3,
      strMeasure4,
      strMeasure5,
      strMeasure6,
      strMeasure7,
      strMeasure8,
      strMeasure9,
      strMeasure10,
      strMeasure11,
      strMeasure12,
      strMeasure13,
      strMeasure14,
      strMeasure15,
      strMeasure16,
      strMeasure17,
      strMeasure18,
      strMeasure19,
      strMeasure20,
    ];

    final combined = <String>[];

    for (int i = 0; i < 20; i++) {
      final ingredient = ingredients[i];
      final measure = measures[i];

      if (ingredient != null &&
          ingredient.trim().isNotEmpty &&
          measure != null &&
          measure.trim().isNotEmpty) {
        combined.add('${measure.trim()} ${ingredient.trim()}');
      } else if (ingredient != null && ingredient.trim().isNotEmpty) {
        combined.add(ingredient.trim());
      }
    }

    return combined;
  }
}
