import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'my app',
      debugShowCheckedModeBanner: false,
      home: Tab_bar(),
    ));

class Tab_bar extends StatelessWidget {
  const Tab_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tab Bar',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: const DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.person),
                  text: 'profile',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'setting',
                ),
                Tab(
                  icon: Icon(Icons.system_update_rounded),
                  text: 'dawonlod',
                ),
                Tab(
                  icon: Icon(Icons.menu),
                  text: 'menu',
                ),
              ],
              indicatorColor: Colors.black,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              dividerColor: Colors.amberAccent
              ,
            ),
            Expanded(child: TabBarView(children: [Center(child: Text('Profile',style: TextStyle(fontSize: 50),),),
            Center(child: Text('setting'),),
            Center(child: Text('dawonlod'),),
            Center(child: Text('menu'),),],),),
          ],
        ),
      ),
    );
  }
}
