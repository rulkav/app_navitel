// import 'package:app_navitel/widgets/login/auth.dart';
import 'package:flutter/material.dart';

class SupportWidget extends StatelessWidget {
  const SupportWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      // child:
      // Container(
      padding: const EdgeInsets.all(30.0),
      // width: double.infinity,
      // child: Column(
      children: <Widget>[
        Text(
          'В связи с принимаемыми в стране противоэпидемиологическими мерами Служба техподдержки NAVITEL работает в ограниченном режиме.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Мы временно не осуществляем консультации по телефону, но по-прежнему готовы оказать вам помощь по электронной почте и в социальных сетях.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Дата возобновления полноценной работы техподдержки будет объявлена дополнительно.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Вопросы по установке/обновлению программы/карт подробно описаны в инструкциях, а функционал программы - в документации. Пожалуйста, ознакомьтесь с информацией прежде чем задать вопрос.',
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Если вы не нашли ответа на свой вопрос в инструкциях, обратитесь в нашу службу технической поддержки. Мы сможем быстрее обработать ваш запрос, если в первом письме вы предоставите нам следующую информацию:',
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1.',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Expanded(
                  child: Text(
                    ' марка и модель устройства, на котором используется приложение Navitel;',
                    softWrap: true,
                    maxLines: 3,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '2.',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Expanded(
                  child: Text(
                    ' версия операционной системы устройства;',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '3.',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Expanded(
                  child: Text(
                    ' полный номер версии установленного приложения Navitel (Меню -> Мой Навител -> Скачать карты -> Навител Навигатор);',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '4.',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Expanded(
                  child: Text(
                    ' лицензионный ключ на программу (также можно приложить файл лицензии из каталога \NavitelContent\License).',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ],
      // ),
      // ),
    );
  }
}
