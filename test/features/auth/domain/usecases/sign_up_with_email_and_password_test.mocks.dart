// Mocks generated by Mockito 5.1.0 from annotations
// in dairy_app/test/features/auth/domain/usecases/sign_up_with_email_and_password_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:dairy_app/features/auth/core/validators/email_validator.dart'
    as _i3;
import 'package:dairy_app/features/auth/core/validators/password_validator.dart'
    as _i4;
import 'package:dairy_app/features/auth/core/failures/failures.dart' as _i7;
import 'package:dairy_app/features/auth/domain/entities/logged_in_user.dart'
    as _i8;
import 'package:dairy_app/features/auth/domain/repositories/authentication_repository.dart'
    as _i5;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [EmailValidator].
///
/// See the documentation for Mockito's code generation for more information.
class MockEmailValidator extends _i1.Mock implements _i3.EmailValidator {
  MockEmailValidator() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool call(String? email) =>
      (super.noSuchMethod(Invocation.method(#call, [email]), returnValue: false)
          as bool);
}

/// A class which mocks [PasswordValidator].
///
/// See the documentation for Mockito's code generation for more information.
class MockPasswordValidator extends _i1.Mock implements _i4.PasswordValidator {
  MockPasswordValidator() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool call(String? password) =>
      (super.noSuchMethod(Invocation.method(#call, [password]),
          returnValue: false) as bool);
}

/// A class which mocks [IAuthenticationRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAuthenticationRepository extends _i1.Mock
    implements _i5.IAuthenticationRepository {
  MockIAuthenticationRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.Either<_i7.SignUpFailure, _i8.LoggedInUser>>
      signUpWithEmailAndPassword({String? email, String? password}) =>
          (super.noSuchMethod(
              Invocation.method(#signUpWithEmailAndPassword, [],
                  {#email: email, #password: password}),
              returnValue:
                  Future<_i2.Either<_i7.SignUpFailure, _i8.LoggedInUser>>.value(
                      _FakeEither_0<_i7.SignUpFailure, _i8.LoggedInUser>())) as _i6
              .Future<_i2.Either<_i7.SignUpFailure, _i8.LoggedInUser>>);
  @override
  _i6.Future<_i2.Either<_i7.SignInFailure, _i8.LoggedInUser>>
      signInWithEmailAndPassword({String? email, String? password}) =>
          (super.noSuchMethod(
              Invocation.method(#signInWithEmailAndPassword, [],
                  {#email: email, #password: password}),
              returnValue:
                  Future<_i2.Either<_i7.SignInFailure, _i8.LoggedInUser>>.value(
                      _FakeEither_0<_i7.SignInFailure, _i8.LoggedInUser>())) as _i6
              .Future<_i2.Either<_i7.SignInFailure, _i8.LoggedInUser>>);
}
