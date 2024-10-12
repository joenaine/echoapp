class ApiUrl {
  // Authentication
  static const String registerUser = "/auth/register/";
  static const String loginUser = "/auth/login/";

  // User
  static const String changePassword = "/user/change-password/";
  static const String changeName = "/user/change-name/";
  static const String deleteAccount = "/user/delete-account/";

  // Posts
  static const String getSinglePost =
      "/posts/{post_id}/"; // Add post_id dynamically when needed
  static const String listPosts = "/posts/";
  static const String addFavoritePost = "/posts/favorites/add/";
  static const String removeFavoritePost = "/posts/favorites/remove/";

  // Categories
  static const String listCategories = "/categories/";
  static const String addFavoriteCategory = "/categories/favorites/add/";
  static const String removeFavoriteCategory = "/categories/favorites/remove/";

  // Tags
  static const String listTags = "/tags/";
  static const String addFavoriteTag = "/tags/favorites/add/";
  static const String removeFavoriteTag = "/tags/favorites/remove/";
}
