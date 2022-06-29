import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FlexmoneyDevFirebaseUser {
  FlexmoneyDevFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FlexmoneyDevFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FlexmoneyDevFirebaseUser> flexmoneyDevFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FlexmoneyDevFirebaseUser>(
            (user) => currentUser = FlexmoneyDevFirebaseUser(user));
