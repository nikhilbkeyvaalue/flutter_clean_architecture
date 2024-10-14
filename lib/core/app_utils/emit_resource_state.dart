import 'package:flutter_clean_architecture/core/models/resource.dart';

Future<void> emitResourceState<T>(Future<Resource<T>> Function() useCase,
    Function(Resource<T>) emitState) async {
  emitState(Resource.loading());
  final result = await useCase();
  emitState(result);
}
