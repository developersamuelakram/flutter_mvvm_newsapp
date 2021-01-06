import 'package:dio/dio.dart';
import 'package:flutter_mvvm_newsapp/constant/constant.dart';
import 'package:flutter_mvvm_newsapp/model/modelfile.dart';

class WebService {


  var dio = Dio();


  // for top headlines

  Future<List<ModelNewsArticle>> getTopHeadlines() async {

    final response = await dio.get(Constants.TOPHEADLINES);

    if (response.statusCode == 200) { // 200 represent successful response

      final result = response.data;

      Iterable list = result['articles'];
      return list.map((article) => ModelNewsArticle.fromJson(article)).toList();


    } else {

      throw Exception('response failed');

    }
  }



  Future<List<ModelNewsArticle>> getNewsByCountry(String country) async {

    final response = await dio.get(Constants.headliensFor(country));

    if (response.statusCode == 200) { // 200 represent successful response

      final result = response.data;

      Iterable list = result['articles'];
      return list.map((article) => ModelNewsArticle.fromJson(article)).toList();


    } else {

      throw Exception('response failed');

    }
  }


}