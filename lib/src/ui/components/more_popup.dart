import 'package:flutter/material.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/ui/pages/about/page_about_app.dart';
import 'package:smkdev/src/ui/pages/feedback/page_feedback_dashboard.dart';
import 'package:smkdev/src/ui/pages/partner/page_partner_dashboard.dart';

class MorePop extends StatefulWidget {
  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  MorePop({this.onPressed, this.tooltip, this.icon});

  @override
  _MorePopState createState() => _MorePopState();
}

class _MorePopState extends State<MorePop> with SingleTickerProviderStateMixin{
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget add() {
    return new Container(
      margin: EdgeInsets.all(2),
      width: 160,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20)
        ),
        onPressed: (){
          print("tentang kami pressed");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutDashboard()),
          );
        },
        color: colorPrimary,
        child: Row(
          children: [
            Text("Tentang Kami",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            SizedBox(width:5),
            Icon(
              Icons.group_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget image() {
    return new Container(
      margin: EdgeInsets.all(2),
      width: 180,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20)
        ),
        onPressed: (){
          print("partner & career pressed");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PartnerDashboard()),
          );
        },
        color: colorPrimary,
        child: Row(
          children: [
            Text("Partner & Career",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            SizedBox(width:5),
            Icon(
              Icons.group_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget inbox() {
    return new Container(
      margin: EdgeInsets.all(1),
      width: 130,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20)
        ),
        onPressed: (){
          print("feedback pressed");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FeedbackDashboard()),
          );
        },
        color: colorPrimary,
        child: Row(
          children: [
            Text("Feedback",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            SizedBox(width:5),
            Icon(
              Icons.group_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget toggle() {
    return new Container(
      child: FloatingActionButton(
        backgroundColor: _buttonColor.value,
        onPressed: animate,
        tooltip: 'Toggle',
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animateIcon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 3.0,
            0.0,
          ),
          child: add(),
        ),
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value * 2.0,
            0.0,
          ),
          child: image(),
        ),
        Transform(
          transform: Matrix4.translationValues(
            0.0,
            _translateButton.value,
            0.0,
          ),
          child: inbox(),
        ),
        toggle(),
      ],
    );
  }
}