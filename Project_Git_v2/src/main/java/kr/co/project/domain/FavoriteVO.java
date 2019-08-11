package kr.co.project.domain;

public class FavoriteVO {
   private int favorite_id;
   private String favorite_name;
   public int getFavorite_id() {
      return favorite_id;
   }
   public void setFavorite_id(int favorite_id) {
      this.favorite_id = favorite_id;
   }
   public String getFavorite_name() {
      return favorite_name;
   }
   public void setFavorite_name(String favorite_name) {
      this.favorite_name = favorite_name;
   }
   public FavoriteVO() {
      super();
   }
   
}