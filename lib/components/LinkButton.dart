import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  final String title;
  final String url;
  final IconData icon;
  final Color color;

  const LinkButton({
    Key key,
    @required this.title,
    @required this.url,
    @required this.icon,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var maxWidth = 600.0;
    return Container(
      width: size.width > maxWidth ? 600.0 : size.width * 0.95,
      child: Card(
        shadowColor: Colors.black,
        color: color,
        child: InkWell(
          splashColor: Colors.white,
          onTap: () {
            launch(url);
            print(url);
          },
          child: ListTile(
            leading: FaIcon(
              icon,
              color: Colors.white,
            ),
            title: Text(
              title,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            trailing: Icon(null),
          ),
        ),
      ),
    );
  }
}
