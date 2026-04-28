import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter UI Demo")),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.search),
        ],
      ),
      body: ListView(
        children: [

          // Progress
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 10),
                LinearProgressIndicator(value: 0.5),
              ],
            ),
          ),

          // Snackbar Button
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Snackbar")));
            },
            child: Text("Show Snackbar"),
          ),

          // Dialog
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text("Alert"),
                  content: Text("Message"),
                ),
              );
            },
            child: Text("Show Dialog"),
          ),

          // Expansion Tile
          ExpansionTile(
            title: Text("Expand"),
            children: [ListTile(title: Text("Child"))],
          ),

          // Horizontal List
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (_, i) => Container(
                width: 100,
                margin: EdgeInsets.all(8),
                color: Colors.blue,
              ),
            ),
          ),

          // Slidable
          Slidable(
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (_) {},
                  icon: Icons.delete,
                ),
              ],
            ),
            child: ListTile(title: Text("Slide me")),
          ),

          // Chart
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 1),
                      FlSpot(1, 3),
                      FlSpot(2, 2)
                    ],
                  )
                ],
              ),
            ),
          ),

          // Auto size text
          AutoSizeText(
            "Auto resizing text example",
            maxLines: 2,
          ),

          // Skeleton loader
          Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white,
            child: Container(height: 20, width: 200),
          ),

          // Staggered Grid
          SizedBox(
            height: 300,
            child: MasonryGridView.count(
              crossAxisCount: 2,
              itemCount: 6,
              itemBuilder: (_, i) => Container(
                margin: EdgeInsets.all(8),
                height: (i % 2 == 0) ? 100 : 150,
                color: Colors.red,
              ),
            ),
          ),

        ],
      ),
    );
  }
}