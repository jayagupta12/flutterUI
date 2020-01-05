import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/main_page.dart';
import 'package:kf_drawer/kf_drawer.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: MainPage(),
      items:[KFDrawerItem.initWithPage(
          text: Text('Home', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
          page: MainPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Cart',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.card_giftcard, color: Colors.white),
          page: MainPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Search',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.search, color: Colors.white),
          page: MainPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Filter',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.filter, color: Colors.white),
          page: MainPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Messages',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.message, color: Colors.white),
          page: MainPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.people, color: Colors.white),
          page: MainPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Help',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.help, color: Colors.white),
          page: MainPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Setting',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.settings, color: Colors.white),
          page: MainPage(),
        ),
         
      ],
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
       borderRadius: 0.0,
       shadowBorderRadius: 0.0,
       menuPadding: EdgeInsets.all(0.0),
       scrollable: true,
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor:Colors.transparent,
                    backgroundImage: NetworkImage("https://homepages.cae.wisc.edu/~ece533/images/monarch.png")
                    ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Leanna Leonardo",style: TextStyle(fontSize: 16,color: Colors.white),),
                         Text("leannaleonardo@gmail.com",style: TextStyle(fontSize: 12,color: Colors.grey),)
                    ],
                  ),
                )
                ],
                
              ),
            ),
          ),
        ),
        footer: Column(
         
          children: <Widget>[                       
            KFDrawerItem(           
              text: Text(
                'LOG OUT',
                style: TextStyle(color: Colors.white),
              ),
              icon: Icon(
                Icons.input,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  fullscreenDialog: true,
                  builder: (BuildContext context) {
                    return MainPage();
                  },
                ));
              },
            ),
            
          ],

        ),
        decoration: BoxDecoration(
          color: Colors.black
        ),
      ),
    );
  }
}

