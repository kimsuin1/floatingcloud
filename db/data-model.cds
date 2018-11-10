namespace my.restaurant;
/*식당 마스터 */
entity M_0010 {
  key ShopID : String;//E5J4
      Title  : String;//2단지코리안
      AreaName : String;//사업장명(전자서울R&D캠퍼스)
      SubAreaName : String;//1단지,2단지
}
/*식사 타입 마스터 */
/* M:아침, L:점심, D:저녁, N:야식 */
entity M_0020 {
  key MealType : String;
      Title  : String;
}
/*식단 리스트 */
entity T_0010 {
  key ShopID     : Association to M_0010; //식당ID           ex)잠실SDS
  key Corner     : String; //코너명                          코리안
  key Date       : DateTime; //날짜                          2018-11-09
  key MealType   : Association to M_0020; //식사 타입	     점심 
  key MainTitle  : String; //메인 식사명                     김치찌개
      SideDish   : String; //추가 메뉴
      Calories   : String; //칼로리
      LikeIt     : Integer;//좋아요 숫자
}
/*사용자 즐겨 찾기 식당-카카오 톡용  */
entity T_0020 {
 key UserKey : String;//카카오톡 사용자 아이디(난수)
     ShopID  : Association to M_0010;//M_0010의 키
}
