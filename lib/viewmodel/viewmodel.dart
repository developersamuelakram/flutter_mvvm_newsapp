import 'package:flutter_mvvm_newsapp/model/modelfile.dart';
import 'package:intl/intl.dart';

class ViewModel {
  ModelNewsArticle _modelNewsArticle;
  ViewModel({ModelNewsArticle article}) : _modelNewsArticle = article;



  String get title {

    return _modelNewsArticle.title;

  }

  String get description {

    return _modelNewsArticle.description;
  }

  String get url {
    return _modelNewsArticle.url;


  }

  String get urlToImage {
    return _modelNewsArticle.urlToImage;


  }

  String get publishedAt {

    final dateTime = DateFormat('yyyy-mm-ddTHH:mm:ssZ').parse(_modelNewsArticle.publishedAt, true);
    return DateFormat.yMMMMEEEEd('en-us').format(dateTime);


  }




}