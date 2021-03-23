import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Help',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'SF-Pro',
              ),
            ),
            actions: [
              IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
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
                color: Colors.grey[200],
              ),
              child: Column(children: [
                Image.asset('assets/blogger_photo.png'),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Автор приложения - топовый блогер Александра Буримова',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'SF-Pro',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(children: [
                  Image.asset('assets/instagramm_image.png',
                      height: 22, width: 22),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '@burimova',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontFamily: 'SF-Pro',
                    ),
                  ),
                ]),
                const SizedBox(height: 10),
              ]),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Поддержка',
                      //style: Theme.of(context).textTheme.headline5,
                      style: TextStyle(
                        fontFamily: 'SF-Pro',
                        fontSize: 17,
                      ),
                    ),
                    Expanded(child: Container()),
                    const Icon(Icons.chevron_right),
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
}
