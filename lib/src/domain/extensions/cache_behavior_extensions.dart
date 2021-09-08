import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';

extension CacheBehaviorExtension on CacheBehavior {
  Future<Either<T, ErrorEntity>> when<T>({
    required Future<Either<T, ErrorEntity>> Function() onCache,
    required Future<Either<T, ErrorEntity>> Function() onInternet,
    required Future<Either<void, ErrorEntity>> Function(T) onSave,
    bool waitForOnSave = false,
  }) async {
    switch (this) {
      case CacheBehavior.withoutCache:
        return (await onInternet()).fold(
          (l) async {
            if (waitForOnSave) {
              await onSave(l);
            } else {
              // ignore: unawaited_futures
              onSave(l);
            }
            return Left(l);
          },
          (r) => Right(r),
        );
      case CacheBehavior.firstCache:
        return (await onCache()).fold(
          (l) => Left(l),
          (r) async {
            return (await onInternet()).fold(
              (l) async {
                if (waitForOnSave) {
                  await onSave(l);
                } else {
                  // ignore: unawaited_futures
                  onSave(l);
                }
                return Left(l);
              },
              (r) => Right(r),
            );
          },
        );
      case CacheBehavior.lastCache:
        return (await onInternet()).fold(
          (l) async {
            if (waitForOnSave) {
              await onSave(l);
            } else {
              // ignore: unawaited_futures
              onSave(l);
            }
            return Left(l);
          },
          (r) => onCache(),
        );
      case CacheBehavior.onlyCache:
        return onCache();
    }
  }
}
