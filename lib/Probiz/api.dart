//Host Name
// const HOST_NAME = "https://pro-biz-ms-62nc2b4u7q-uc.a.run.app";
const HOST_NAME = "http://10.0.2.2:8080";

var userEmail = '';
var ID = '';

//API paths
const COMP_PS_SEARCH_URL = "$HOST_NAME/company/search?value=";
const CHART_STATISTICS_URL = "$HOST_NAME/company/get/count-Key";
const FEATURED_COMPANY_URL = "$HOST_NAME/company/featured";
const COMPANY_DETAILS_URL = "$HOST_NAME/company/details/";
const TERTIARY_CATEGORY_URL = "$HOST_NAME/product-service/tertiary-category";
const CHART_SERVICES_LIST = "$HOST_NAME/company/services";
const CHART_PRODUCTS_LIST = "$HOST_NAME/company/products";
const CHART_CITIES_LIST = "$HOST_NAME/contact/cities";
String PROFILE_COMPANY_DETAILS(){
  return  "$HOST_NAME/company/by-company-poc/$userEmail";
  // return  "$HOST_NAME/company/by-company-poc/krukeni000@gmail.com";

}
String STARED_CMP_DATA(){
  return "$HOST_NAME/company/favourite/$userEmail";
  // return "$HOST_NAME/company/favourite/krukeni000@gmail.com";
}


//POST API paths
const FAVORITE_CMP = "$HOST_NAME/company/favourite";
const CMP_INQUIRY = "$HOST_NAME/inquiry/";



