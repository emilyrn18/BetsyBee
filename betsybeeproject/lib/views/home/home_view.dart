import 'package:betsybeeproject/widgets/call_to_action/call_to_action.dart';
import 'package:betsybeeproject/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';
import 'package:betsybeeproject/widgets/navigation_bar/navigation_bar.dart';
import 'package:betsybeeproject/widgets/centered_view/centered_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[800],
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Row(children: <Widget>[
                  CourseDetails(),
                  Expanded(child: Center(child: CallToAction('How To Support')))
                ]),
              )
            ],
          ),
        ));
  }
}
