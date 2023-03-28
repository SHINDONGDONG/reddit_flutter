import 'package:flutter/material.dart';
import 'package:reddit_flutter/core/common/sign_in_button.dart';
import 'package:reddit_flutter/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(Constants.logoPath,height: 40,),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 30,),
          const Text(
            'Dive into anything',
            style: TextStyle(//letterspacing은 글자간격을 늘리거나 줄일 수 있다.
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 0.5),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(Constants.loginEmotePath,height: 400,),
          ),
          const SizedBox(height: 20,),
          const SignInButton(),
        ],
      ),
    );
    
  }
}
