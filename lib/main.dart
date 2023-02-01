import 'package:flutter/material.dart';
import 'package:style_theme/my_custum_btn.dart';
import 'package:style_theme/ui_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
 static _MyAppState? of(BuildContext context) =>
     context.findAncestorStateOfType<_MyAppState>();

}

class _MyAppState extends State<MyApp> {
  var themeMode = ThemeMode.light;

  void changeTheme(
      ThemeMode themeMode){
     this.themeMode = themeMode;
     setState(() {

     });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stayle Theme',
      themeMode: themeMode,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: MyColors.myColor,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
    fontSize: 40,fontWeight: FontWeight.w700
    ),
          bodyMedium: TextStyle(
              fontSize: 21,fontWeight: FontWeight.w500
          ),
          bodySmall: TextStyle(
              fontSize: 15,fontWeight: FontWeight.w200
          ),
          titleLarge: TextStyle(
            color: MyColors.primaryColor,
              fontSize: 40,fontWeight: FontWeight.w700
          ),
        ),

      ),

      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Style Theme')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Text Heading', style: myHeadLine35(fweight: FontWeight.w900,fColor: Colors.cyan)),
            Text('Dark Tital', style: myHeadLine21(fweight: FontWeight.w900)),
            Text('Dark Contant',style: myHeadLine15(fweight: FontWeight.w400)),
            Text('Contant', style: myHeadLine35(fColor: Colors.deepPurple,fweight: FontWeight.w200)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: Text('Okey'),
                ),
                SizedBox(width: 12,),
                ElevatedButton(onPressed: (){}, child: Text('Cancel'),

                ),

              ],
            ),
            MyCustumButton(bntName: 'Play',bgColor: Colors.deepPurple,
            prefix: Icon(Icons.play_arrow ),
            ),
            MyCustumButton(bntName: 'Click',bgColor: Colors.green,)

            // Text('Dark Mode', style:  TextStyle(fontWeight: FontWeight.w600,
            //     fontSize: 21),),
            // Switch(
            //   onChanged: (value){
            //      isDark = value;
            //      if(isDark){
            //        MyApp.of(context)!.changeTheme(ThemeMode.dark);
            //      } else{
            //        MyApp.of(context)!.changeTheme(ThemeMode.light);
            //      }
            //     setState(() {
            //
            //     });
            //   },
            //   value: isDark,
            // ),
          ],
        ),
      )
    );
  }
}
