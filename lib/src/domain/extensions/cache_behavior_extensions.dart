import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';

extension CacheBehaviorExtension on CacheBehavior {
  Future<Either<ErrorEntity, T>> when<T>({
    required Future<Either<ErrorEntity, T>> Function() onCache,
    required Future<Either<ErrorEntity, T>> Function() onInternet,
    required Future<Either<ErrorEntity, Unit>> Function(T) onSave,
    bool waitForOnSave = false,
  }) async {
    switch (this) {
      case CacheBehavior.withoutCache:
        return (await onInternet()).fold(
          (l) => Left(l),
          (r) async {
            if (waitForOnSave) {
              await onSave(r);
            } else {
              // ignore: unawaited_futures
              onSave(r);
            }
            return Right(r);
          },
        );
      case CacheBehavior.firstCache:
        return (await onCache()).fold(
          (l) async {
            return (await onInternet()).fold(
              (l) => Left(l),
              (r) async {
                if (waitForOnSave) {
                  await onSave(r);
                } else {
                  // ignore: unawaited_futures
                  onSave(r);
                }
                return Right(r);
              },
            );
          },
          (r) => Right(r),
        );
      case CacheBehavior.lastCache:
        return (await onInternet()).fold(
          (l) => onCache(),
          (r) async {
            if (waitForOnSave) {
              await onSave(r);
            } else {
              // ignore: unawaited_futures
              onSave(r);
            }
            return Right(r);
          },
        );
      case CacheBehavior.onlyCache:
        return onCache();
    }
  }
}
