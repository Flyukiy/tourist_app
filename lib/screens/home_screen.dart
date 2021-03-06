import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home page',
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.filter_vintage_rounded), onPressed: () {}),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 55,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TopMenuItems('Seoul'),
                    TopMenuItems('Busan'),
                    TopMenuItems('Jeju'),
                    TopMenuItems('Gwangu'),
                    TopMenuItems('Yeosu'),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.72,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return SingleMenuItem();
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.white54,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.save_alt_rounded),
              color: Colors.white54,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white54,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.wb_sunny_rounded),
              color: Colors.white54,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SingleMenuItem extends StatelessWidget {
  const SingleMenuItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: Card(
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.location_city_outlined),
              ),
              title: Text('Hello everybody'),
              subtitle: Text(DateTime.now().microsecond.toString()),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.deepPurpleAccent,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        shadowColor: Colors.deepPurpleAccent,
      ),
    );
  }
}

class TopMenuItems extends StatelessWidget {
  final String title;

  TopMenuItems(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(title),
      ),
    );
  }
}
