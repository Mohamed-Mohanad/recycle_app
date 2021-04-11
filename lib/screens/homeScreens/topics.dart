import 'package:flutter/material.dart';
import 'package:recycle_app_v2/utils/views/ButtonsUtility.dart';
import 'package:recycle_app_v2/utils/views/ImagesUtility.dart';
import 'package:url_launcher/url_launcher.dart';

class Topics extends StatefulWidget {
  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  var uRL_List = [
    {
      "image": "1",
      "url":
          "https://www.cutterskiphire.com.au/what-are-the-benefits-of-reducing-plastic-waste/amp/",
    },
    {
      "image": "2",
      "url":
          "https://www.forbes.com/sites/grrlscientist/2018/04/23/five-ways-that-plastics-harm-the-environment-and-one-way-they-may-help/?sh=1a0a958067a0",
    },
    {
      "image": "3",
      "url": "https://www.epa.gov/recycle/recycling-basics",
    },
    {
      "image": "4",
      "url": "https://www.epa.gov/recycle/recycling-basics",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 5, right: 5),
        itemCount: 4,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext context, int index) {
          return Single_Topic(
            topic_image: uRL_List[index]['image'],
            topic_url: uRL_List[index]['url'],
          );
        });
  }
}

class Single_Topic extends StatelessWidget {
  final topic_url;
  final topic_image;

  const Single_Topic({this.topic_image, this.topic_url});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: topic_image,
        child: Material(
            child: InkWell(
          child: GridTile(
            footer: Container(
              child: buildMaterialButton(
                text: "Press Here To Visit Topic About Recycling",
                width: 30,
                color: Colors.blue,
                callback: () {
                  launch(topic_url);
                },
                context: context,
              ),
              color: Colors.black45,
            ),
            child: Image(
              image: assetJpgImage(
                  context: context,
                  imageName: topic_image,
                  height: 30,
                  width: 30),
              fit: BoxFit.fill,
            ),
          ),
        )),
      ),
    );
  }
}
