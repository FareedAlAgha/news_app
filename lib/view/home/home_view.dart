
import 'package:flutter/material.dart';

import 'category_grid_view.dart';
import '../category/category_widget.dart';

class HomeView extends StatefulWidget {
    static const String routeName = 'homeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
    List<Category> category = [
      Category(
            CategoryID : 'sports'
          , CategoryImage :"assets/images/ball.png"
          , CategoryTitle : 'Sports'
          , CategoryBackground : Color.fromARGB(255, 201, 28, 34)
      ),
      Category(
          CategoryID : 'general'
          , CategoryImage :"assets/images/Politics.png"
          , CategoryTitle : 'General'
          , CategoryBackground : Color.fromARGB(255, 0, 62, 144)
      ),
      Category(
          CategoryID : 'health'
          , CategoryImage :"assets/images/health.png"
          , CategoryTitle : 'Health'
          , CategoryBackground : Color.fromARGB(255, 237, 30, 121)
      ),
    Category(
    CategoryID : 'business'
    , CategoryImage :"assets/images/bussines.png"
    , CategoryTitle : 'Bussiness'
    , CategoryBackground : Color.fromARGB(255, 207, 126, 72)
    ),
    Category(
    CategoryID : 'technology'
    , CategoryImage :"assets/images/environment.png"
    , CategoryTitle : 'Technology '
    , CategoryBackground : Color.fromARGB(255, 207, 130, 207)
    ),
      Category(
          CategoryID : 'science'
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
        title: Text(
          selectedCategory ==null? 'News App' : selectedCategory!.CategoryTitle,
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
            InkWell(
              onTap: (){
                setState(() {
                  selectedCategory =null;
                  Navigator.pop(context);
                });
              },
              child: Padding(
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


      body:selectedCategory ==null ?  Container(

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
                      onClickItem: onClick ,
                    ),
                    itemCount: category.length,
                  ),
                ),
              ],
            ),
      ) : CategoryNewsList(selectedCategory!),
    );
  }

  Category? selectedCategory = null;

  void onClick(Category category){
    setState(() {
      selectedCategory=category;
    });


  }
}
