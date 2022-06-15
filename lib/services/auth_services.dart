part of 'services.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user =
          await UserServices().getUserById(userCredential.user!.uid);
      return user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    String nis = '130121',
    String kelas = 'XII-MIPA1',
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        nis: nis,
        kelas: kelas,
      );
      await UserServices().setUser(user);
      return user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
