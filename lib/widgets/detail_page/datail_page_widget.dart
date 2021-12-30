import 'package:app_navitel/widgets/apps/apps.dart';
import 'package:app_navitel/widgets/detail_page/datail_page_main_info_widget.dart';
import 'package:flutter/material.dart';

class MapDetailWidget extends StatefulWidget {
  final int mapId;
  // final String name;
  const MapDetailWidget({
    Key? key,
    required this.mapId,
    // required this.name,
  }) : super(key: key);

  @override
  _MapDetailWidgetState createState() => _MapDetailWidgetState();
}

class _MapDetailWidgetState extends State<MapDetailWidget> {
  var _pageIndex = 0;
  String mapName = '';

  void _updatePageIndex(int index) {
    this._pageIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // mapName = context.findAncestorWidgetOfExactType<MapDetailWidget>()!.name;
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center,
            child: Text(
              //
              // mapName,
              'Навител. Украина',
              textAlign: TextAlign.center,
            )),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 84),
            child: MyStatelessWidget(),
          ),
          Container(
              height: 100,
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  BuyWidget(),
                  SizedBox(height: 12),
                  PositionScrollWidget(),
                ],
              )),
        ],
      ),
    );
  }
}

class PositionScrollWidget extends StatefulWidget {
  const PositionScrollWidget({Key? key}) : super(key: key);

  @override
  _PositionScrollWidgetState createState() => _PositionScrollWidgetState();
}

class _PositionScrollWidgetState extends State<PositionScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PositionPageViewWidget(
          index: context
              .findAncestorStateOfType<_MapDetailWidgetState>()!
              ._pageIndex),
      height: 10,
      width: 75,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   // color: Colors.red,
      //   border: Border.all(color: Colors.black.withOpacity(0.2)),
      //   borderRadius: BorderRadius.all(Radius.circular(10)),
      // ),
    );
  }
}

class PositionPageViewWidget extends StatelessWidget {
  final int index;
  const PositionPageViewWidget({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var i = 0; i < 3; i++)
            if (i == this.index)
              PageItemWidget(state: true)
            else
              PageItemWidget(state: false),
        ],
      ),
    );
  }
}

class PageItemWidget extends StatelessWidget {
  final bool state;
  const PageItemWidget({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? _color = null;
    if (this.state == true)
      _color = Colors.green;
    else
      _color = Colors.white;
    return Container(
      width: 10,
      decoration: BoxDecoration(
        color: _color,
        border: Border.all(color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}

class BuyWidget extends StatelessWidget {
  const BuyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '1700' + ' грн.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(width: 30),
        TextButton(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {},
          child: Container(
            alignment: Alignment.center,
            height: 44,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.green,
            ),

            // minWidth: double.infinity,
            child: Text(
              'КУПИТЬ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      controller: controller,
      onPageChanged: (int index) {
        context
            .findAncestorStateOfType<_MapDetailWidgetState>()
            ?._updatePageIndex(index);
        // print(index);
      },
      children: <Widget>[
        Column(
          children: [
            HightDeTailImageWidget(),
            HightDeTailWidget(),
          ],
        ),
        Column(
          children: [
            BenefitsImageWidget(),
            BenefitsWidget(),
          ],
        ),
        Column(
          children: [
            MayPOIImageWidget(),
            MayPOIWidget(),
          ],
        ),
      ],
    );
  }
}
