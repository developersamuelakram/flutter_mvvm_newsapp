class Constants {


  static const APIKEY = "52489cf346804f2eb180b8e34528aa26";
  static const TOPHEADLINES = "https://newsapi.org/v2/top-headlines?country=us&apiKey=$APIKEY";


  static String headliensFor(String country) {


    return 'https://newsapi.org/v2/top-headlines?country=$country&apiKey=$APIKEY';

  }


  static const Map<String, String> Countries = {

    'USA': 'us',
    'India': 'in',
    'Korea': 'kr',
    'China': 'cn'


  };



}