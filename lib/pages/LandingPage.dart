import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linktree_clone/components/LinkButton.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var maxWidth = 600.0;

    return Material(
      child: FooterView(
        footer: Footer(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 16,
                ),
                const SizedBox(width: 8.0),
                Text(
                  'Dibuat dengan Flutter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8.0),
                Image.asset(
                  'assets/images/flutter.png',
                  width: 24,
                  height: 24,
                )
              ],
            ),
            backgroundColor: Colors.grey.shade200,
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.bottomCenter),
        children: [
          Center(
            child: Container(
              width: size.width > maxWidth ? 600.0 : size.width * 0.95,
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 32.0),
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset("assets/images/fotosaya.jpg"),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('@rizkyghofur',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  LinkButton(
                    icon: FontAwesomeIcons.github,
                    title: 'GitHub',
                    url: 'https://www.github.com/rizkyghofur',
                    color: Colors.grey.shade800,
                  ),
                  LinkButton(
                    title: 'LinkedIn',
                    icon: FontAwesomeIcons.linkedin,
                    url: 'https://www.linkedin.com/in/rizkyghofur/',
                    color: Colors.blueAccent,
                  ),
                  LinkButton(
                    title: 'Instagram',
                    url: 'https://www.instagram.com/rizky.ghofur',
                    icon: FontAwesomeIcons.instagram,
                    color: Colors.red[300],
                  ),
                  LinkButton(
                    title: 'Twitter',
                    url: 'https://twitter.com/RizkyAGhofur',
                    icon: FontAwesomeIcons.twitter,
                    color: Colors.lightBlue[400],
                  ),
                  LinkButton(
                    title: 'WhatsApp',
                    url:
                        'https://api.whatsapp.com/send/?phone=628113666858&text=Halo,%20kak!&app_absent=0',
                    icon: FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                  ),
                  LinkButton(
                    title: 'Telegram',
                    url: 'https://t.me/rizkyghofur',
                    icon: FontAwesomeIcons.telegram,
                    color: Colors.lightBlue,
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
