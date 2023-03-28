import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
    final FirebaseFirestore _firestore;
    final FirebaseAuth _auth;
    final GoogleSignIn _googleSignIn;

  AuthRepository({
    required FirebaseFirestore firestore,
    required FirebaseAuth auth,
    required GoogleSignIn googleSignIn,
  }): _auth = auth,
      _firestore = firestore,
      _googleSignIn = googleSignIn;

  //google 로그인 메소드
  void signInWithGoogle() async {
    try {
      //googleSignInAcccount가 없을지도 모른다. signIn() 으로 로그인해준다.
      final GoogleSignInAccount? googlUser = await _googleSignIn.signIn();
      final googleAuth =await googlUser?.authentication;

      //credential이라는 변수에 googleauth의 credential을 넣어준다.
      //엑서스 토큰은 위에서 받은 googlesiginaccount형태의 googleuser를 넣어준다.
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.idToken
      );

      UserCredential userCredential = await _auth.signInWithCredential(credential);

      print(userCredential.user?.email);

    } catch(e) {
      print(e.toString());
    }
  }

}