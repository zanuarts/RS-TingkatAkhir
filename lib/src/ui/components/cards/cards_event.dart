import 'package:flutter/material.dart';
import 'package:smkdev/src/models/event.dart';
import 'package:smkdev/src/ui/pages/layanan/page_event_detail.dart';

class EventButtonsWidget extends StatelessWidget {
  final List<Event> list;

  EventButtonsWidget({@required this.list}) {
    assert(list != null);
  }

  @override
  Widget build(BuildContext context) => Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return EventButtonItem(
                caption: list[index].nama,
                image: AssetImage(list[index].image),
                onClick: () {},
                event: list[index],
              );
            }),
      );
}

class EventButtonItem extends StatelessWidget {
  final String caption;
  final ImageProvider<dynamic> image;
  final Function onClick;
  final Event event;

  const EventButtonItem(
      {@required this.caption,
      @required this.image,
      this.onClick,
      @required this.event});

  Function _processOnTap(Function onClick) {
    return onClick ?? () {};
  }

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
              height: 200,
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
                    builder: (context) => EventDetailPage(
                          event: event,
                        )),
              );
            },
          ),
        ));
  }
}
