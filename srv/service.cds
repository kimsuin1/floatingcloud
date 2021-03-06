using my.restaurant from '../db/data-model';

service CatalogService {
  entity Cafeteria as projection on restaurant.M_0010;
  entity MealType as projection on restaurant.M_0020;
  entity Menu  as projection on restaurant.T_0010;
  entity MainMenu as projection on restaurant.T_0011;
  entity DailyMenu as projection on restaurant.T_0012;
  entity BookmarkedRestaurant as projection on restaurant.T_0020
  entity BookmarkedMenu as projection on restaurant.T_0030
}
