import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_work_app/pages/AddTodo.dart';

import '../custom/TodoCard.dart';
import '../services/Auth_service.dart';
import 'SignUpPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthClass authClass = AuthClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "todays schedule",
          style: TextStyle(fontSize: 34,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        bottom:PreferredSize(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text("Monday",style: TextStyle(fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white,
                    ),
              ),
            ),
          ),
          preferredSize:Size.fromHeight(35),
        ),

          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.logout),
          //     onPressed: () async {
          //       await authClass.logout();
          //        // ignore: use_build_context_synchronously
          //        Navigator.pushAndRemoveUntil(
          //         context,
          //        MaterialPageRoute(builder: (builder) => SignUpPage()),
          //         (route) => false);
          //         },
          //       )
          //      ],
          //  ),
          //   );
//  }
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black87
            , items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,size:32,color:Colors.white,),
               label:Container().toString(),
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=> AddTodoPage()));
                },
                child: Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  gradient:LinearGradient(colors:[
                    Colors.indigoAccent,
                    Colors.purple,
                  ],
                  ),
                  ), child: Icon(Icons.add,size:32,color:Colors.white,)),
              ),
            label:Container().toString(),
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.settings,size:32,color:Colors.white,),
              label:Container().toString(),

     ),
     ],
     ),
     body: SingleChildScrollView(child: 
     Container(
      height:MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     padding: EdgeInsets.symmetric(horizontal:20,vertical:20),
     child: 
     Column(children: [
       TodoCard(
        title: "wake up",
        check: true,
        iconbgColor: Colors.white,
        iconColor: Colors.red,
        iconData: Icons.alarm,
        time:"7 AM",
       ),
       SizedBox(height:10,),
       TodoCard(
        title: "breakfast",
        check: true,
        iconbgColor: Colors.white,
        iconColor: Colors.blue,
        iconData: Icons.bakery_dining,
        time:"9 AM",
       ),
       SizedBox(height:10,),
       TodoCard(
        title: "GYM",
        check: true,
        iconbgColor: Colors.white,
        iconColor: Colors.orangeAccent,
        iconData: Icons.sports_gymnastics,
        time:"10 AM",
       ),


     ],
     ),
     ),
     ),
    );
  }
}
