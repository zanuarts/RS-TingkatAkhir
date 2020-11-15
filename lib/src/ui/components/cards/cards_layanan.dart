import 'package:flutter/material.dart';
import 'package:smkdev/src/models/layanan.dart';
import 'package:smkdev/src/ui/pages/layanan/page_layanan_detail.dart';

class LayananButtonsWidget extends StatelessWidget {
  final List<Layanan> list;

  LayananButtonsWidget({@required this.list}) {
    assert(list != null);
  }

  @override
  Widget build(BuildContext context) => Container(
        height: 100,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return LayananButtonItem(
                caption: list[index].nama,
                image: AssetImage(list[index].image),
                onClick: () {},
                layanan: list[index],
              );
            }),
      );
}

class LayananButtonItem extends StatelessWidget {
  final String caption;
  final ImageProvider<dynamic> image;
  final Function onClick;
  final Layanan layanan;

  const LayananButtonItem(
      {@required this.caption,
      @required this.image,
      this.onClick,
      @required this.layanan});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Material(
          color: Colors.black,
          child: InkWell(
            child: Container(
              width: 150,
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Text(
                  caption,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              decoration: new BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.8), BlendMode.dstATop),
                    image: image),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LayananDetailPage(
                    layanan: layanan,
                )
              ),
            );
          },
        ),
      )
    );
  }
}
