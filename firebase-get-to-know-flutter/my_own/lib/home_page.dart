import 'package:flutter/material.dart';
import 'package:gtk_flutter/src/authentication.dart';
import 'package:gtk_flutter/src/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Meetup'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/codelab.png'),
          const SizedBox(height: 8),
          const IconAndDetail(Icons.calendar_today, 'October 30'),
          const IconAndDetail(Icons.location_city, 'San Francisco'),
          const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          const Header("What we'll be doing"),
          const Paragraph(
            'Join us for a day full of Firebase Workshops and Pizza!',
          ),
          Authentication(
            loginState: ApplicationLoginState.loggedOut,
            email: null,
            startLoginFlow: () {},
            verifyEmail: (string, functionWithEx) {},
            signInWithEmailAndPassword: (str1, str2, funcWithEx) {},
            cancelRegistration: () {},
            registerAccount: (s1, s2, s3, funcWithEx) {},
            signOut: () {},
          ),
        ],
      ),
    );
  }
}
