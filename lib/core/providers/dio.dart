import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core.dart';

final dioProvider = Provider<Dio>(
  (_) => Dio(BaseOptions(baseUrl: AppConstants.apiUrl)),
);
