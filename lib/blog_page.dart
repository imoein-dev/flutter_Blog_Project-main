import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/custom_widges/post_widget.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<Widget> listBlogWidget = [
    getBlogePost(
        imageName: 's.png', title: 'برای ۱۴ آبان SafeMoon : سیگنال خرید'),
    getBlogePost(
        imageName: 'a.png', title: 'برای ۱۴ آبان Alchemy Pay : سیگنال خرید'),
    getBlogePost(
        imageName: 'c.png', title: 'برای ۱۴ آبان Cosmos : سیگنال خرید'),
    getBlogePost(
        imageName: 'r.png', title: 'برای ۱۴ آبان Ripple : سیگنال خرید'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'VIP اخبار و سیگنال های ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                ...listBlogWidget,
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
