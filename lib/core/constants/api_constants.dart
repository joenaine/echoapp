class ApiUrl {
  // Authentication
  static const String registerUser = "/auth/register/";
  static const String loginUser = "/auth/login/";

  // User
  static const String profile = "/user/profile/";
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

  // Personalities
  static const String listPersonalities = "/personalities/";
  static const String searchPersonality = "/personalities/search_personality/";
  static const String addFavoritePersonality = "/personalities/favorites/add/";
  static const String removeFavoritePersonality =
      "/personalities/favorites/remove/";

// Channels
  static const String listChannels = "/channels/";
  static const String addFavoriteChannel = "/channels/favorites/add/";
  static const String removeFavoriteChannel = "/channels/favorites/remove/";

  // Promo
  static const String createPromoCode = "/promo/create/";
  static const String applyPromoCode = "/promo/apply/";
  static const String promoCodeHistory = "/promo/history/";
}
