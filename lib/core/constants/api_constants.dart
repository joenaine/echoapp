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

  // Personalities
  static const String listPersonalities = "/api/personalities/";
  static const String searchPersonality =
      "/api/personalities/search_personality/";
  static const String addFavoritePersonality =
      "/api/personalities/favorites/add/";
  static const String removeFavoritePersonality =
      "/api/personalities/favorites/remove/";

// Channels
  static const String listChannels = "/api/channels/";
  static const String addFavoriteChannel = "/api/channels/favorites/add/";
  static const String removeFavoriteChannel = "/api/channels/favorites/remove/";

  // Promo
  static const String createPromoCode = "/api/promo/create/";
  static const String applyPromoCode = "/api/promo/apply/";
  static const String promoCodeHistory = "/api/promo/history/";
}
