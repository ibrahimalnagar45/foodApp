import 'package:flutter/material.dart';
import 'package:plantapp/widgets/categories_bar.dart';
import 'package:plantapp/widgets/custom_app_bar.dart';
import 'package:plantapp/widgets/custom_drawer.dart';
import 'package:plantapp/widgets/dessert_list_view.dart';
import 'package:plantapp/widgets/plats_list_view.dart';

import '../widgets/famous_food_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";
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
        title: const CusotmAppBar(),
      ),
      drawer: const CustomDrawer(),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        semanticChildCount: 10,
        slivers: [
          // AppBarWedgit(),
          FamousFoodListView(),
          SliverToBoxAdapter(child: CategoriesBar(message: "Desserts")),
          DessertListView(),
          SliverToBoxAdapter(child: CategoriesBar(message: "Plats")),
          PlatsListView(),
        ],
      ),
    );
  }
}
