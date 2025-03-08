import 'package:ecommerce_app/presentation/home/pages/home/home_page.dart';
import 'package:ecommerce_app/presentation/home/pages/shop/shop_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/configs/Theme/app_colors.dart';



class NavigationScreen extends StatefulWidget {
  static String id = 'navigation_screen';
  final int initialIndex;
  const NavigationScreen({super.key,this.initialIndex = 0});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>{
  //control screen tab
  int _currentIndex = 0;

  //use init state to run the fetchuserdata function
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.initialIndex;
  }



  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    // Check if the device is a tablet (adjust threshold as needed)
    bool isTablet = screenWidth > 600;
    bool isSmallPhone = screenWidth < 413 && screenHeight<733;
    List<Widget> body = [
      HomePage(),
      ShopPage(),
      Center(
        child: Text('thanks'),
      ),
      Center(
        child: Text('thanks'),
      ),
      Center(
        child: Text('thanks'),
      )
    ];
    return Scaffold(
      body:
      body[_currentIndex],
      //navigation bar
      bottomNavigationBar:
      ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0), // Adjust the radius as needed
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.grey,
            unselectedLabelStyle: TextStyle(
              color: Colors.grey
            ),
            currentIndex: _currentIndex,
            onTap: (int newIndex){
              setState(() {
                _currentIndex = newIndex;
              });
            },
            items:const [
              BottomNavigationBarItem(
                  label: 'Home', icon: Icon(
                Icons.home,
                size: 30,
              )
              ),
              BottomNavigationBarItem(
                  label: 'Shop', icon: Icon(Icons.shopping_cart,size: 30,)
              ),
              BottomNavigationBarItem(
                  label: 'Bag', icon: Icon(Icons.shopping_bag,size: 30,)
              ),
              BottomNavigationBarItem(
                  label: 'Favorites', icon: Icon(Icons.favorite,size: 30,)
              ),
              BottomNavigationBarItem(
                  label: 'Profile', icon: Icon(Icons.person,size: 30,)
              )
            ]
        ),
      ),
    );
  }

}






