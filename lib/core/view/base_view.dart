import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/models/resource.dart';

/// A generic base view widget that handles different states of a resource.
class BaseView<T> extends StatefulWidget {
  /// Constructor for the BaseView.
  const BaseView({
    required this.resource,
    required this.onSuccess,
    required this.resourceCall,
    super.key,
    this.onErrorBuilder,
    this.onLoadingBuilder,
    this.onInitialBuilder,
  });

  final Resource<T> resource;
  final Widget Function(T data) onSuccess;
  final Widget Function(Object error)? onErrorBuilder;
  final Widget Function()? onLoadingBuilder;
  final void Function()? resourceCall;

  final Widget Function()? onInitialBuilder;

  @override
  State<BaseView<T>> createState() => _BaseViewState<T>();
}

class _BaseViewState<T> extends State<BaseView<T>> {
  @override
  Widget build(BuildContext context) {
    if (widget.resource.isInitial) {
      return widget.onInitialBuilder?.call() ?? _defaultInitialWidget();
    } else if (widget.resource.isLoading) {
      return widget.onLoadingBuilder?.call() ?? _defaultLoadingWidget();
    } else if (widget.resource.isError) {
      final error = widget.resource.error!;
      return widget.onErrorBuilder?.call(error) ??
          _defaultErrorWidget(
            error,
            onRetry: widget.resourceCall,
          );
    } else if (widget.resource.isSuccess) {
      return widget.onSuccess((widget.resource as ResourceSuccess).data as T);
    } else {
      // Handle other states or return an empty container as a default.
      return Container();
    }
  }
}

/// Default widget to display during the initial state.
Widget _defaultInitialWidget() {
  return const Center(
    child: Text('Initializing...'),
  );
}

/// Default widget to display during the loading state.
Widget _defaultLoadingWidget() {
  return const Center(
    child: CircularProgressIndicator(),
  );
}

/// Default widget to display during an error state.
Widget _defaultErrorWidget(Object error, {Function? onRetry}) {
  return Center(
    child: InkWell(
      onTap: () {
        onRetry?.call();
      },
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline_sharp,
            size: 80,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Text('Tap to retry'),
        ],
      ),
    ),
  );
}
