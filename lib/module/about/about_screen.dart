import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../my_flutter_app_icons.dart';
import '../presentation/fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            elevation: 0,
            title: const Text(
              'Help',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                fontFamily: AppFonts.sfPro,
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Theme.of(context).primaryIconTheme.color,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ]),
        body: Padding(
          padding:
              const EdgeInsets.only(bottom: 24, top: 24, left: 24, right: 24),
          child: ListView(shrinkWrap: true, children: [
            Container(
              padding: const EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 14.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                //color: Colors.grey[200],
              ),
              child: Column(children: [
                Image.asset('assets/blogger_photo.png'),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Автор приложения - топовый блогер Александра Буримова',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.sfPro,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: _launchURL,
                  child: Row(children: [
                    Icon(MyFlutterApp.instagrammIcon,
                        color: Theme.of(context).accentColor),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '@burimova',
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).accentColor,
                        fontFamily: AppFonts.sfPro,
                      ),
                    ),
                  ]),
                ),
                const SizedBox(height: 10),
              ]),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  'Поддержка',
                  //style: Theme.of(context).textTheme.headline5,
                  style: TextStyle(
                    fontFamily: AppFonts.sfPro,
                    fontSize: 17,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.chevron_right,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.grey,
            ),
          ]),
        ));
  }

  static const String _url = 'https://instagram.com/burimova';

  Future<void> _launchURL() async => await canLaunch(_url) != null
      ? await launch(_url)
      : throw Exception('Could not launch $_url');
}
