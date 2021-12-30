import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_navitel/resources/resources.dart';
// import 'package:app_navitel/widgets/main_screen/main_screen_widget.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Login form',
                style: TextStyle(color: Colors.white),
              ),
            ),
            // MenuWidget(),
          ],
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(top: 60),
            shrinkWrap: true,
            children: <Widget>[
              CaptionWidget(),
              LoginWidget(),
            ],
          ),
          MenuWidget(),
        ],
      ),
    );
  }
}

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  final _url = 'https://navitel.ru';
  final _phone = 'tel://+380504488529';

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  void _callPhone() async => await canLaunch(_url)
      ? await launch(_phone)
      : throw 'Could not call $_phone';

  void _onPressLogin() {
    Navigator.of(context).pushReplacementNamed('/auth');
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(0),
                child: TextButton(
                  onPressed: _launchURL,
                  child: Image(
                    image: AssetImage(AppImages.navitel),
                  ),
                ),
                height: 40,
                width: 40,
              ),
              Container(
                // padding: EdgeInsets.only(top: 0),
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage(AppImages.flag),
                      ),
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('RU'),
                  ],
                ),
                height: 36,
                width: 70,
              ),
              Container(
                padding: EdgeInsets.all(0),
                child: TextButton(
                  // style: ButtonStyle(padding: EdgeInsetsGeometry(all:0),
                  onPressed: _onPressLogin,
                  child: Image(
                    image: AssetImage(AppImages.login),
                  ),
                ),
                height: 40,
                width: 40,
              ),
              Container(
                padding: EdgeInsets.all(0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: _callPhone,
                  child: Icon(
                    Icons.phone,
                    color: Colors.green,
                    size: 24,
                  ),

                  // child: Image(
                  //   image: Icon(Icons.phone),
                  // ),
                ),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  // color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CaptionWidget extends StatelessWidget {
  const CaptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 145, 10, 05),
      child: Container(
        // width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          'Авторизация',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  String? errString;
  final _loginTextController = TextEditingController(text: 'admin');
  final _passTextController = TextEditingController(text: 'admin');
  void _auth() {
    final _login = _loginTextController.text;
    final _pass = _passTextController.text;
    if (_login != 'admin' && _pass != 'admin') {
      errString = 'Неверное имя пользователя или пароль';
    } else {
      errString = null;
      // final navigator = Navigator.of(context);
      Navigator.of(context).pushReplacementNamed('/main_screen');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (errString != null)
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 1),
                  color: Colors.red[50],
                ),
                height: 80,
                width: double.infinity,
                // color: Colors.red[50],
                alignment: Alignment.center,
                child: Text(
                  '$errString',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            SizedBox(
              height: 10,
            ),
            Text('Логин или email:'),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _loginTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                filled: true,
                isCollapsed: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Пароль:'),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passTextController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                filled: true,
                isCollapsed: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: _auth,
                child: Container(
                  alignment: Alignment.center,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.green,
                  ),

                  // minWidth: double.infinity,
                  child: Text(
                    'Ввод',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Забыли пароль?',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
