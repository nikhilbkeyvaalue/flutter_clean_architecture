// ignore_for_file: sort_constructors_first, avoid_equals_and_hash_code_on_mutable_classes

class EnvModel {
  //<editor-fold desc="Data Methods">
  EnvModel({required this.baseUrl, required this.apiKey});

  late String baseUrl;
  late String apiKey;

  factory EnvModel.fromMap(Map<String, dynamic> map) {
    return EnvModel(
      baseUrl: map['baseUrl'] as String,
      apiKey: map['apiKey'] as String,
    );
  }

}
