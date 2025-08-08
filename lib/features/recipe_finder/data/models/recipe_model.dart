import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    @JsonKey(name: 'idMeal') required String id,
    @JsonKey(name: 'strMeal') required String title,
    @JsonKey(name: 'strCategory') String? category,
    @JsonKey(name: 'strMealThumb') String? imageUrl,
    @JsonKey(name: 'strInstructions') String? instructions,
    @JsonKey(name: 'strArea') String? area,
    @JsonKey(name: 'strTags') String? tags,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
