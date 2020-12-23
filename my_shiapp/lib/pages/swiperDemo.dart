import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemoPage extends StatefulWidget {
  SwiperDemoPage({Key key}) : super(key: key);

  @override
  _SwiperDemoPageState createState() => _SwiperDemoPageState();
}

class _SwiperDemoPageState extends State<SwiperDemoPage> {
  List<Map> imgList = [
    {"url": "https://www.itying.com/images/flutter/5.png"},
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"}
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('flutter swiper轮播图组件'),
        ),
        body: Column(
          children: [
            Container(
                // height: 250,
                width: double.infinity,
                child: AspectRatio(
                    //比例
                    aspectRatio: 16 / 11,
                    child:

                        // new Swiper(
                        //   itemBuilder: (BuildContext context, int index) {
                        //     return new Image.network(
                        //       imgList[index]["url"],
                        //       fit: BoxFit.fill,
                        //     );
                        //   },
                        //   itemCount: 3,
                        //   pagination: new SwiperPagination(), //配置分页器
                        //   // control: new SwiperControl(), //配置左右的箭头
                        //   autoplay: true,
                        // ),

                        new Swiper(
                            layout: SwiperLayout.CUSTOM,
                            customLayoutOption: new CustomLayoutOption(
                                    startIndex: -1, stateCount: 3)
                                .addRotate([
                              -45.0 / 180,
                              0.0,
                              45.0 / 180
                            ]).addTranslate([
                              new Offset(-370.0, -40.0),
                              new Offset(0.0, 0.0),
                              new Offset(370.0, -40.0)
                            ]),
                            itemWidth: 300.0,
                            itemHeight: 200.0,
                            itemBuilder: (context, index) {
                              return new Container(
                                // color: Colors.grey,
                                child: new Center(
                                  child: Image.network(imgList[index]['url'],
                                      fit: BoxFit.cover),
                                ),
                              );
                            },
                            itemCount: imgList.length))),
            Row(
              children: [Text('多云----data')],
            )
          ],
        ));
  }
}
