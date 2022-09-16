import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard(
      {required this.title,
      required this.iconData,
      required this.iconColor,
      required this.time,
      required this.check,
      required this.iconbgColor});
   final String title;
   final IconData iconData;
   final Color iconColor;
   final String time;
   final bool check;
   final Color iconbgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Theme(
              child: Transform.scale(
                scale: 1.5,

                // ignore: sort_child_properties_last
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  activeColor: Color(0xff6cf8),
                  checkColor: Color(0xff0e3e26),
                  value: check,
                  onChanged: (bool? value) {},
                ),
              ),
              data: ThemeData(
                primarySwatch: Colors.blue,
                unselectedWidgetColor: Color(0xff5e616a),
              ),
            ),
            Expanded(
              child: Container(
                height: 75,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Color(0xff2a2e3d),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 33,
                          width: 36,
                          decoration: BoxDecoration(
                            color: iconbgColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            iconData,
                            color: iconColor,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(title,
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                        ),
                        Text(time,
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ));
  }
}
