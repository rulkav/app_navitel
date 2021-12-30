import 'package:app_navitel/resources/resources.dart';
import 'package:flutter/material.dart';

class Products {
  final int id;
  final String picture;
  final String title;
  final String price;
  final String description;

  Products(
      {required this.id,
      required this.picture,
      required this.title,
      required this.price,
      required this.description});
}

class MapApps extends StatefulWidget {
  MapApps({Key? key}) : super(key: key);

  @override
  _MapAppsState createState() => _MapAppsState();
}

class _MapAppsState extends State<MapApps> {
  final _products = [
    Products(
      id: 1,
      picture: AppImages.coverUkraineRu,
      title: 'Навител. Украина',
      price: '1700',
      description:
          'Навигационные карты от NAVITEL® отличаются высоким уровнем детализации. Карты содержат актуальные данные об инфраструктуре городов и населенных пунктов с удобным поиском – по адресу, ближайшим объектам, координатам и другим параметрам.',
    ),
    Products(
      id: 2,
      picture: AppImages.coverUkraineRu,
      title: 'Навител. Узбекистан',
      price: '1200',
      description:
          '3D‑развязки, 3D‑объекты, 3 альтернативных маршрута, голосовые подсказки по маршруту, подробная база SPEEDCAM, возможность выбора языка, а также настраиваемые интерфейс – все это доступно каждому пользователю навигационной системы Навител.',
    ),
    Products(
      id: 3,
      picture: AppImages.coverUkraineRu,
      title: 'Навител. Филиппины',
      price: '1800',
      description:
          'Пользователям Навител доступна расширенная база объектов POI. Приобретая карты Навител, вы получаете доступ к данным о месторасположении заправок, банкоматов, ресторанов, а также других объектов.',
    ),
    Products(
      id: 4,
      picture: AppImages.coverUkraineRu,
      title: 'Навител. Франция, Монако',
      price: '1000',
      description:
          'Подключение к сети Интернет дает доступ к онлайн‑сервисам NAVITEL®, в их числе сервис Навител.Пробки, Навител.События, Навител.Новости и сервис от Booking.com.',
    ),
    Products(
      id: 5,
      picture: AppImages.coverUkraineRu,
      title: 'Навител. Чехия, Словакия',
      price: '850',
      description:
          'Программа Навител предлагает расширенный набор настроек для навигации большегрузного транспорта. Выберите тип грузового транспорта или создайте свое транспортное средство, добавив его параметры: длину, ширину, высоту, максимальную разрешенную и фактическую массу, осевую нагрузку и т.д., и программа будет строить маршруты с учетом дорожных ограничений для данного вида транспорта, позволив беспрепятственно проехать до точки назначения.',
    ),
  ];

  final _searchController = TextEditingController();
  var _filteredProducts = <Products>[];

  void _searchMovies() {
    final query = _searchController.text;
    if (query != '') {
      _filteredProducts = _products
          .where((Products movie) =>
              movie.title.toUpperCase().contains(query.toUpperCase()))
          .toList();
    } else
      _filteredProducts = _products;
    setState(() {});
  }

  @override
  void initState() {
    _filteredProducts = _products;
    _searchController.addListener(_searchMovies);
    super.initState();
  }

  void _onMapTap(int index) {
    final id = _products[index].id;
    final mapName = _products[index].title;
    Navigator.of(context).pushNamed(
      '/main_screen/map_details',
      // arguments: [id, mapName],
      arguments: [id],
      // arguments:
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.only(top: 70),
          itemCount: _filteredProducts.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredProducts[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image(image: AssetImage(movie.picture)),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                movie.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                movie.price + ' грн.',
                                style: TextStyle(color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                movie.description,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () {
                        _onMapTap(index);
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Container(
          // color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Поиск',
                fillColor: Colors.white.withAlpha(240),
                filled: true,
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
