import 'package:ecommerce_app/common/widgets/appbar/basic_in_app_bar.dart';
import 'package:ecommerce_app/core/configs/Theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/categories_items/categories.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  static String id = 'shop page';

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: Column(
        children: [
          //app bar
          InAppBar(title: 'Categories'),
          tabBar(),
          _tabBarView()
        ],
      ),
    );
  }

  Widget tabBar(){
    return TabBar(
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: AppColors.primary,
        indicatorWeight: 4,
        dividerColor: Colors.transparent,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        labelPadding: EdgeInsets.all(10),
        tabs: const [
          Text(
              'Women',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16
            ),
          ),
          Text(
              'Men',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16
            ),
          ),
          Text(
              'Kids',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16
            ),
          )
        ]
    );
  }

  Widget _tabBarView(){
    return Expanded(
        child: TabBarView(
          controller: _tabController,
            children: const [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Categories(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Categories(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Categories(),
                ),
              ),
            ]
        )
    );
  }
}


