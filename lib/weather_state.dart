import 'package:sealed_unions/factories/quartet_factory.dart';
import 'package:sealed_unions/implementations/union_4_impl.dart';
import 'package:sealed_unions/union_4.dart';

// class WeatherState
//     extends Union3Impl<_WeatherInitial, _WeatherLoading, _WeatherLoaded> {
//   static const Triplet<_WeatherInitial, _WeatherLoading, _WeatherLoaded>
//       _factory = Triplet<_WeatherInitial, _WeatherLoading, _WeatherLoaded>();

//   WeatherState._(Union3<_WeatherInitial, _WeatherLoading, _WeatherLoaded> union)
//       : super(union);

//   factory WeatherState.initial() =>
//       WeatherState._(_factory.first(_WeatherInitial()));

//   factory WeatherState.loading() =>
//       WeatherState._(_factory.second(_WeatherLoading()));

//   factory WeatherState.loaded(int temperature) =>
//       WeatherState._(_factory.third(_WeatherLoaded(temperature)));
// }

class CategorieState extends Union4Impl {
  CategorieState._(
      Union4<_CategorieInitial, _CategorieLoading, _CategorieSuccess,
              _CategorieError>
          union)
      : super(union);

  static const Quartet<_CategorieInitial, _CategorieLoading, _CategorieSuccess,
          _CategorieError> _factory =
      Quartet<_CategorieInitial, _CategorieLoading, _CategorieSuccess,
          _CategorieError>();

  factory CategorieState.initial() =>
      CategorieState._(_factory.first(_CategorieInitial()));

  factory CategorieState.loading() =>
      CategorieState._(_factory.second(_CategorieLoading()));

  factory CategorieState.sucess() =>
      CategorieState._(_factory.third(_CategorieSuccess()));

  factory CategorieState.error() =>
      CategorieState._(_factory.fourth(_CategorieError()));
}

class _CategorieInitial {}

class _CategorieLoading {}

class _CategorieSuccess {}

class _CategorieError {}
