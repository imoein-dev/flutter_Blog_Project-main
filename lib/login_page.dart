import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/password_recovery.dart';
import 'blog_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
          
                    Text(
                      'خوش آمدید VIP به اپلیکیشن سیگنال',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200.0, 40.0),
                    primary: Colors.black,
                    side: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  onPressed: () {
                    navigateToBlogPage(context, BlogScreen());
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      minimumSize: Size(200.0, 43.0)),
                ),
                TextButton(
                  onPressed: () {
                    navigateToBlogPage(context, PasswordRecoveryScreen());
                  },
                  child: Text(' ! فراموشی رمز عبور '),
                  style: TextButton.styleFrom(primary: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
