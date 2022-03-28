import 'package:dairy_app/features/auth/core/failures/failures.dart';
import 'package:dairy_app/features/auth/domain/entities/logged_in_user.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthenticationRepository {
  /// If connected to internet, registers the user remotely, and then registers the
  /// user locally using the id returned, for offline logins
  ///
  /// Returns [SignupFailure] Either type with suitable error code
  Future<Either<SignUpFailure, LoggedInUser>> signUpWithEmailAndPassword(
      {required String email, required String password});

  /// First tries to sign in from local database, if the email is not found in
  /// local database, then tries to sign in through firebase
  ///
  /// If the [email] is present in local database, but password is not matching
  /// then it will not check into firebase but throws [SignInFailure]
  ///
  /// id the [email] is not present in local database, then it logs in with firebase
  /// and stores the [email] and [password] in local database for subsequent logins.
  Future<Either<SignInFailure, LoggedInUser>> signInWithEmailAndPassword(
      {required String email, required String password});
}
