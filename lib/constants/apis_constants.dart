class ApiConstants {
  static String baseUrl = 'https://mbl.downloadvid.app/';
  static String dataUrl = 'api/data/';

  static String getUrl() {
    return baseUrl + dataUrl;
  }
  static String imageUrl(String url){
    return baseUrl+url;
  }
}
