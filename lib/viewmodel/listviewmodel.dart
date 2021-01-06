


import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm_newsapp/model/modelfile.dart';
import 'package:flutter_mvvm_newsapp/service/service.dart';
import 'package:flutter_mvvm_newsapp/viewmodel/viewmodel.dart';

enum LoadingStatus {

  Completed,
  Searching,
  Empty,


}

class ListViewModel with ChangeNotifier{


  LoadingStatus loadingStatus = LoadingStatus.Empty;


  List<ViewModel> articles = List<ViewModel>();

  // methods to fetch news
  void fetchTopNewsHeadlines() async {

    List<ModelNewsArticle> _newsarticle  = await WebService().getTopHeadlines();
    loadingStatus = LoadingStatus.Searching;
    notifyListeners();
    this.articles = _newsarticle.map((article) => ViewModel(article: article)).toList();


    if (this.articles.isEmpty) {

      loadingStatus = LoadingStatus.Empty;

    } else {

      loadingStatus = LoadingStatus.Completed;
    }


    notifyListeners();
  }



  // methods for news from each country
  void fetchNewsByCountry(String country) async {

    List<ModelNewsArticle> _newsarticle  = await WebService().getNewsByCountry(country);
    loadingStatus = LoadingStatus.Searching;
    notifyListeners();
    this.articles = _newsarticle.map((article) => ViewModel(article: article)).toList();


    if (this.articles.isEmpty) {

      loadingStatus = LoadingStatus.Empty;

    } else {

      loadingStatus = LoadingStatus.Completed;
    }


    notifyListeners();
  }





}