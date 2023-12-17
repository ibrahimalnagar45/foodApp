import 'package:flutter/material.dart';
import 'package:plantapp/widgets/custom_app_bar.dart';
import 'package:plantapp/widgets/plats_list_view.dart';
import '../widgets/custom_drawer.dart';

class PlatesPage extends StatelessWidget {
  const PlatesPage({super.key});
  static String id = "PlatesPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          // leading: IconButton(
          //   onPressed: () {
          //     // Scaffold.of(context).openDrawer();
          //   },
          //   icon: Icon(Icons.menu),
          //   color: Colors.black,
          // ),
          title: const CusotmAppBar()),
      drawer: const CustomDrawer(),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        semanticChildCount: 10,
        slivers: [
          // AppBarWedgit(),

          PlatsListView(),
        ],
      ),
    );
  }
}
