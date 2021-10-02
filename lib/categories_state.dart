import 'package:sealed_unions/factories/quartet_factory.dart';
import 'package:sealed_unions/implementations/union_4_impl.dart';
import 'package:sealed_unions/union_4.dart';

class CategorieState extends Union4Impl {
  CategorieState._(
      Union4<_CategorieInitial, _CategorieLoading, _CategorieSuccess,
              _CategorieError>
          union)
      : super(union);

  static const Quartet<_CategorieInitial, _CategorieLoading, _CategorieSuccess,
      _CategorieError> _union = Quartet();

  factory CategorieState.initial() =>
      CategorieState._(_union.first(_CategorieInitial()));

  factory CategorieState.loading() =>
      CategorieState._(_union.second(_CategorieLoading()));

  factory CategorieState.sucess() =>
      CategorieState._(_union.third(_CategorieSuccess()));

  factory CategorieState.error() =>
      CategorieState._(_union.fourth(_CategorieError()));
}

class _CategorieInitial {}

class _CategorieLoading {}

class _CategorieSuccess {}

class _CategorieError {}
