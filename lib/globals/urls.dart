
class APIUrl {

  // Base URLS (BASE_URL, AUTH_BASE_URL, V1_BASE_URL)
  static const String baseUrl = "https://api.themoviedb.org/3/";
  static const String authBaseUrl = "{$baseUrl}authenticate/";
  static const String v1BaseUrl = "{$baseUrl}authenticate/";

  // Login, Dashboard, Profile, Password Change
  static const String loginUrl = "{$authBaseUrl}/accounts/login/";
  static const String dashboardUrl = "{$v1BaseUrl}/dashboard/";
  static const String profileUrl = "{$v1BaseUrl}/profile/";
  static const String passwordChangeUrl = "{$v1BaseUrl}/password/change/";

}