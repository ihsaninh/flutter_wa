import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: Stack(
              children: [
                Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://avatars0.githubusercontent.com/u/24758414?s=460&u=0320c6b47c237cca2af8ba9a835775106bee213b&v=4')
                  )
                )
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF00CC3F),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add, 
                    color: Colors.white, 
                    size: 20
                  ),
                ),
              )
            ],
            ),
            title: Text(
              'My status',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600
              ),
            ),
            subtitle: Text('Tap to add status update'),
          ),
          Container(
            height: 28,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[200],
            child: Container(
              padding: EdgeInsets.only(left: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Viewed Updates',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600]
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}