// Mocks generated by Mockito 5.4.5 from annotations
// in expense_personal/test/auth/unit_test/auth_login_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:expense_personal/cores/model/user_model.dart' as _i6;
import 'package:expense_personal/cores/services/auth_service.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFirebaseAuth_0 extends _i1.SmartFake implements _i2.FirebaseAuth {
  _FakeFirebaseAuth_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeFirebaseFirestore_1 extends _i1.SmartFake
    implements _i3.FirebaseFirestore {
  _FakeFirebaseFirestore_1(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [AuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthService extends _i1.Mock implements _i4.AuthService {
  MockAuthService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FirebaseAuth get auth =>
      (super.noSuchMethod(
            Invocation.getter(#auth),
            returnValue: _FakeFirebaseAuth_0(this, Invocation.getter(#auth)),
          )
          as _i2.FirebaseAuth);

  @override
  _i3.FirebaseFirestore get firestore =>
      (super.noSuchMethod(
            Invocation.getter(#firestore),
            returnValue: _FakeFirebaseFirestore_1(
              this,
              Invocation.getter(#firestore),
            ),
          )
          as _i3.FirebaseFirestore);

  @override
  _i5.Future<_i6.UserModel?> register(
    String? email,
    String? name,
    String? password,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#register, [email, name, password]),
            returnValue: _i5.Future<_i6.UserModel?>.value(),
          )
          as _i5.Future<_i6.UserModel?>);

  @override
  _i5.Future<_i6.UserModel?> login(String? email, String? password) =>
      (super.noSuchMethod(
            Invocation.method(#login, [email, password]),
            returnValue: _i5.Future<_i6.UserModel?>.value(),
          )
          as _i5.Future<_i6.UserModel?>);

  @override
  _i5.Future<void> logout() =>
      (super.noSuchMethod(
            Invocation.method(#logout, []),
            returnValue: _i5.Future<void>.value(),
            returnValueForMissingStub: _i5.Future<void>.value(),
          )
          as _i5.Future<void>);
}
