
import 'package:flutter/material.dart';

import 'category_grid_view.dart';

class HomeView extends StatelessWidget {
    static const String routeName = 'homeView';

    List<Category> category = [
      Category(
            CategoryID : 'Sports'
          , CategoryImage :"assets/images/ball.png"
          , CategoryTitle : 'Sports'
          , CategoryBackground : Color.fromARGB(255, 201, 28, 34)
      ),
      Category(
          CategoryID : 'General'
          , CategoryImage :"assets/images/Politics.png"
          , CategoryTitle : 'General'
          , CategoryBackground : Color.fromARGB(255, 0, 62, 144)
      ),
      Category(
          CategoryID : 'Health'
          , CategoryImage :"assets/images/health.png"
          , CategoryTitle : 'Health'
          , CategoryBackground : Color.fromARGB(255, 237, 30, 121)
      ),
    Category(
    CategoryID : 'Bussiness'
    , CategoryImage :"assets/images/bussines.png"
    , CategoryTitle : 'Bussiness'
    , CategoryBackground : Color.fromARGB(255, 207, 126, 72)
    ),
    Category(
    CategoryID : 'Environment'
    , CategoryImage :"assets/images/environment.png"
    , CategoryTitle : 'Environment '
    , CategoryBackground : Color.fromARGB(255, 207, 130, 207)
    ),
      Category(
          CategoryID : 'Science'
          , CategoryImage :"assets/images/science.png"
          , CategoryTitle : 'Science '
          , CategoryBackground : Color.fromARGB(255, 242, 211, 82)
      ),


    ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('News App',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 22,

        ),

        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),

          )
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 45),
              width: double.infinity,
              height: 120,
              color: Colors.green,
              child:
                Text('News App!'
                ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.menu, size: 30,),
                  SizedBox(width: 10,),
                  Text('Categories',style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black


                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.settings, size: 30,),
                  SizedBox(width: 10,),
                  Text('Settings',style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,color: Colors.black


                  ),)
                ],
              ),
            )
          ],
        ),

      ),


      body: Container(

        padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(

                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 6/7,
                    ),
                    itemBuilder:(context,index)=> CategoryGridView(
                      index: index,
                      category : category[index],
                    ),
                    itemCount: category.length,
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
