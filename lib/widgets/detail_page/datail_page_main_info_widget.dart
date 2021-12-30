import 'package:app_navitel/resources/resources.dart';
import 'package:app_navitel/widgets/detail_page/datail_page_widget.dart';
import 'package:flutter/material.dart';

class TextStile {
  static final mainTextStyle = TextStyle(
    color: Colors.grey[700],
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  static final TextStyle headerTextStyle = TextStyle(
    color: Colors.grey[700],
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
}

// class TopPosterWidget extends StatelessWidget {
//   const TopPosterWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       // alignment: Alignment.bottomLeft,
//       children: [
//         // alignment: CrossAxisAlignment.start,
//         // Image(image: AssetImage(AppImages.coverUkraineRu)),
//         Image(image: AssetImage(AppImages.ruApp)),

//         Positioned(
//             top: 40,
//             left: 20,
//             bottom: 40,
//             child: Image(image: AssetImage(AppImages.coverUkraineRu))),
//       ],
//     );
//   }
// }

// class NameWidget extends StatelessWidget {
//   const NameWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Text(
//       'Навител Навигатор. Украина',
//       style: TextStile.headerTextStyle,
//     ));
//   }
// }

class HightDeTailImageWidget extends StatelessWidget {
  const HightDeTailImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Image(image: AssetImage(AppImages.imgOne)),
    );
  }
}

class HightDeTailWidget extends StatelessWidget {
  const HightDeTailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Высокодетализированные карты',
          style: TextStile.headerTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Навигационные карты от NAVITEL® отличаются высоким уровнем детализации. Карты содержат актуальные данные об инфраструктуре городов и населенных пунктов с удобным поиском – по адресу, ближайшим объектам, координатам и другим параметрам.',
          style: TextStile.mainTextStyle,
        ),
      ],
    );
  }
}

class BenefitsImageWidget extends StatelessWidget {
  const BenefitsImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage(AppImages.img2)),
    );
  }
}

class BenefitsWidget extends StatelessWidget {
  const BenefitsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Преимущества Навител Навигатор',
          style: TextStile.headerTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '3D‑развязки, 3D‑объекты, 3 альтернативных маршрута, голосовые подсказки по маршруту, подробная база SPEEDCAM, возможность выбора языка, а также настраиваемые интерфейс – все это доступно каждому пользователю навигационной системы Навител Навигатор.',
          style: TextStile.mainTextStyle,
        ),
      ],
    );
  }
}

class MayPOIImageWidget extends StatelessWidget {
  const MayPOIImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage(AppImages.img3)),
    );
  }
}

class MayPOIWidget extends StatelessWidget {
  const MayPOIWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Многочисленные POI',
          style: TextStile.headerTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Пользователям Навител Навигатор доступна расширенная база объектов POI. Приобретая карты Навител, вы получаете доступ к данным о месторасположении заправок, банкоматов, ресторанов, а также других объектов.',
          style: TextStile.mainTextStyle,
        ),
      ],
    );
  }
}
