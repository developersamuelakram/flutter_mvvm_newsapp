import 'package:flutter/material.dart';
import 'package:flutter_mvvm_newsapp/viewmodel/viewmodel.dart';
import 'package:flutter_mvvm_newsapp/widgets/circleImage.dart';


class DetailScreen extends StatelessWidget {

  ViewModel article;
  DetailScreen(this.article);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),

      body: Container(
        padding: EdgeInsets.only(right:20, left:20, top:20),
        child: Column(
          children: <Widget>[

            Container(
              height: 300,
              child: CircleImage(
              imageUrl: this.article.urlToImage,

              ),),


          Text(this.article.publishedAt,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),),

          SizedBox(height: 5),

            Center(
              child: Text(this.article.title,
                style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18),)),

            SizedBox(height: 9),

            Text(this.article.description,
            style: TextStyle(
              fontSize: 15,

            ),),





          ],
        ),





      ),



    );
  }
}
