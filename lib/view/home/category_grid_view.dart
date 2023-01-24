import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {
  Category category;
  int index;
  Function onClickItem;
  CategoryGridView({
    required this.category,
   required this.index,
    required this.onClickItem});


  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          onClickItem(category);

        },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: category.CategoryBackground,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(index%2==0? 25 : 0),
            bottomRight: Radius.circular(index%2==0? 0 : 25),

          )


        ),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(category.CategoryImage),
            Text(category.CategoryTitle,
            style: Theme.of(context).textTheme.headline6,)
          ],
        ),
      ),
    );
  }

}

class Category{
  String CategoryID;
  String CategoryImage;
  String CategoryTitle;
  Color CategoryBackground;

  Category({required this.CategoryID,required this.CategoryImage,required this.CategoryTitle,required this.CategoryBackground});
}
