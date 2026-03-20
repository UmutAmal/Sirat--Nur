import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/utils/qibla_utils.dart';
import 'package:sirat_i_nur/presentation/blocs/prayer_times_provider.dart';

final qiblaDirectionProvider = FutureProvider<double>((ref) async {
  final position = await ref.watch(locationProvider.future);
  return QiblaUtils.calculateQiblaDirection(position.latitude, position.longitude);
});
