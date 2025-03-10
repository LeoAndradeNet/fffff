import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class ExXaAuthUser {
  ExXaAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ExXaAuthUser> exXaAuthUserSubject =
    BehaviorSubject.seeded(ExXaAuthUser(loggedIn: false));
Stream<ExXaAuthUser> exXaAuthUserStream() =>
    exXaAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
