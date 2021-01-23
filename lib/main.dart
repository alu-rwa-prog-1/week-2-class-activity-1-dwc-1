import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // Drawer
    Widget drawerSection = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Safari'),
            decoration: BoxDecoration(
              color: Colors.green[500],
            ),
          ),
          ListTile(
            title: Text('Game drives'),
            onTap: () {
              // Update the state of the app
              // Closing the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Bird watching'),
            onTap: () {
              // Update the state of the app
              // Closing the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Safari walks'),
            onTap: () {
              // Update the state of the app
              // Closing the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*Putting a column inside an expanded widget*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Kigali Akegere Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kigali, Rwanda',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.yellow[800],
          ),
          Text('41'),
        ],
      ),
    );

    Widget textSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text(
          'Akagera National Park lies in eastern Rwanda, hugging the border with Tanzania.'
              ' It is characterized by woodland, swamps, low mountains and savannah. The varied terrain '
              'shelters wildlife including zebras, giraffes, elephants, lions and hundreds of bird '
              'species, such as the rare shoebill stork. In the southern part of the park, vast Lake '
              'Ihema is home to hippos and crocodiles... ',
          softWrap: true,
        ));

    Color color = Colors.green[700];

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    return MaterialApp(
        title: "Safari",
        home: Scaffold(
          drawer: drawerSection,
          appBar: AppBar(
            title: Text('Safari'),
            backgroundColor: Colors.green,
          ),
          body: ListView(
            children: [
              Image.asset(
                'images/akagera.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ));
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
