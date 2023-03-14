import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Tune2protectFirebaseUser {
  Tune2protectFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Tune2protectFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Tune2protectFirebaseUser> tune2protectFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Tune2protectFirebaseUser>(
      (user) {
        currentUser = Tune2protectFirebaseUser(user);
        return currentUser!;
      },
    );
