import 'package:sealed_unions/factories/triplet_factory.dart';
import 'package:sealed_unions/implementations/union_3_impl.dart';
import 'package:sealed_unions/union_3.dart';

class WeatherState
    extends Union3Impl<_WeatherInitial, _WeatherLoading, _WeatherLoaded> {
  static const Triplet<_WeatherInitial, _WeatherLoading, _WeatherLoaded>
      _factory = Triplet<_WeatherInitial, _WeatherLoading, _WeatherLoaded>();

  WeatherState._(Union3<_WeatherInitial, _WeatherLoading, _WeatherLoaded> union)
      : super(union);

  factory WeatherState.initial() =>
      WeatherState._(_factory.first(_WeatherInitial()));

  factory WeatherState.loading() =>
      WeatherState._(_factory.second(_WeatherLoading()));

  factory WeatherState.loaded(int temperature) =>
      WeatherState._(_factory.third(_WeatherLoaded(temperature)));
}

class _WeatherInitial {}

class _WeatherLoading {}

class _WeatherLoaded {
  final int temperature;

  _WeatherLoaded(this.temperature);
}
