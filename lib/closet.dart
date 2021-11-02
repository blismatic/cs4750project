import 'dart:math';

class Article {
  String url;
  String color;
  String brand;
  String type;

  Article(this.url, this.color, this.brand, this.type);
}

class Brands {
  var acne_studios = 'Acne Studios';
  var amiri = 'Amiri';
  var balenciaga = 'Balenciaga';
  var burberry = 'Burberry';
  var dime = 'Dime';
  var heron_preston = 'Heron Preston';
  var john_elliot = 'John Elliot';
  var maison_margiela = 'Maison Margiela';
  var our_legacy = 'Our Legacy';
  var pleasures = 'PLEASURES';
  var saint_laurent = 'Saint Laurent';
}

class Colors {
  var red = 'Red';
  var orange = 'Orange';
  var yellow = 'Yellow';
  var green = 'Green';
  var blue = 'Blue';
  var purple = 'Purple';
  var pink = 'Pink';
  var white = 'White';
  var grey = 'Grey';
  var black = 'Black';
  var cream = 'Cream';
  var brown = 'Brown';
  var multi = ['Flannel', 'Plaid', 'Stripe'];
}

class ArticleTypes {
  // Tops
  var cardigan = 'Cardigan';
  var hoodie = 'Hoodie';
  var jacket = 'Jacket';
  var sweater = 'Sweater';
  var tee = 'Tee';
  var turtleneck = 'Turtleneck';

  // Bottoms
  var pants = 'Pants';
  var shorts = 'Shorts';
  // Shoes
  var shoes = 'Shoes';
}

// +++++++++++++++++++++++++++++
var brands = Brands();

List<Article> tops = [
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/1/01-11-2021_JA_M4211ABB_1_1.jpg', 'Gold', 'Our Legacy', 'Jacket'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/9/29-09-2021_JD_BI0132-BM0_1_1.jpg', 'Grey', 'Acne Studios', 'Hoodie'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/9/29-09-2021_JD_BL0284-BM0_1_1.jpg', 'Grey', 'Acne Studios', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/5/25-10-2021_TH_MKC024-CAS-001_1_1.jpg', 'Black', 'Amiri', 'Cardigan'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/8/08-10-2021_GH_P21F020-NT_1_1.jpg', 'Cream', 'PLEASURES', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/5/15-07-2021_JD_S50HA1012-511_m1_1.jpg', 'Black', 'Maison Margiela', 'Turtleneck'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/2/22-03-2021_jax_s50gu0163-s25503-101_1.jpg', 'Craem', 'Maison Margiela', 'Hoodie'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/1/01-04-2021_MO_S50GC0640-S23865-810_1_1.jpg', 'Grey', 'Maison Margiela', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/1/01-04-2021_MO_S50GU0153-S25508-855_1_1.jpg', 'Black', 'Maison Margiela', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/9/19-10-2021_EC_B90565-CQU_1_1.jpg', 'Peach', 'Acne Studios', 'Jacket'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/9/29-09-2021_EC_B60151-AQ5_1_1.jpg', 'Black', 'Acne Studios', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/3/0/30-09-2021_GH_BI0140-AD8_1_1.jpg', 'Purple', 'Acne Studios', 'Hoodie'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/3/03-09-2021_MB_BL0287-900_1_1.jpg', 'Black', 'Acne Studios', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/2/02-08-2021_MB_BB0397-ABY_1_1.jpg', 'Orange', 'Acne Studios', 'Button Up'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/5/25-10-2021_BLR_MSS013-STW-012_1_1.jpg', 'White', 'Amiri', 'Button Up'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/1/11-10-2021_AJ_MKL018-CAS-004_1_1.jpg', 'Black', 'Amiri', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-08-2021_JD_MSS016-SIL-610_1_1.jpg', 'Orange', 'Amiri', 'Button Up'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-08-21_TC_MJLT001-SCJ-350_1_1.jpg', 'Green', 'Amiri', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/8/18-05-2021_JA_MSS08-SIL-NAT_1_1.jpg', 'Craem', 'Amiri', 'Button Up'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/6/06-08-2021_MB_MOS002-WOO-001_1_1.jpg', 'Black', 'Amiri', 'Jacket'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-10-2021_ML_612966-TLVB1-1361_1_1.jpg', 'Black', 'Balenciaga', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/5/25-10-2021_EC_657400-T1567-2470_1_1.jpg', 'Blue', 'Balenciaga', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/5/25-10-2021_JD_675318-TLVA2-9028_1_1.jpg', 'White', 'Balenciaga', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/9/29-10-2020_AJ_8036603-A8773_1_1.jpg', 'Brown', 'Burberry', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/8/08-09-2021_RC_8045560-A5874_1_1.jpg', 'Green', 'Burberry', 'Flannel'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/7/17-08-2021_JB_8045502-A1189_1_1.jpg', 'Black', 'Burberry', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/1/21-04-2021_BLR_8038655-A9146_1_1.jpg', 'Blue', 'Burberry', 'Flannel'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/3/23-10-2020_JD_P1T280-WR_1_1.jpg', 'White', 'Comme Des Garcon', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/3/03-03-2020_commedesgarcons_playlongsleeveheartlogostripetee_black_white_p1t164-1_si_1.jpg', 'White', 'Comme Des Garcon', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/9/29-08-2019_commedesgarcons_playeyetee_blackblack_p1t192-1_bb_1.jpg', 'Black', 'Comme Des Garcon', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/8/28-07-2021_LL_661835-XKBXY-9275_1_1.jpg', 'Cream', 'Gucci', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/3/1/31-05-2021_JB_548334-XJDAM-1082_1_1.jpg', 'Black', 'Gucci', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/7/17-02-2021_MO_649110-XDBIP-4266_1_1.jpg', 'Blue', 'Gucci', 'Jacket'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/9/09-02-2021_RL_649832-ZAGAK-5337_m1_1.jpg', 'Green', 'Gucci', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/3/0/30-04-2021_JA_HMAA026S21JER0023501_1_1.jpg', 'Purple', 'Heron Preston', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/0/20-10-2021_TH_JO286-MT_m1_1.jpg', 'White', 'Needles', 'Flannel'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/7/17-09-2021_EC_JO192-ID_1_1.jpg', 'Blue', 'Needles', 'Denim'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/7/17-09-2021_EC_JO287-MT_1_1.jpg', 'Red', 'Needles', 'Flannel'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/2/02-04-2021_RL_IN240-AST_1_1.jpg', 'Red', 'Needles', 'Flannel'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/9/29-10-2021_AJ_677263-YBVB2-1095_1_1.jpg', 'Black', 'Saint Laurent', 'Hoodie'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/9/29-10-2021_JD_597085YF899-1220_1_1.jpg', 'Black', 'Saint Laurent', 'Jacket'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/5/25-10-2021_354718Y180W-4011_1_1.jpg', 'Blue', 'Saint Laurent', 'Jacket'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/0/10-08-2021_SI_354718Y180W-1070_1_1.jpg', 'Black', 'Saint Laurent', 'Jacket'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/0/10-08-2021_EC_468491Y177W-1000_1_1.jpg', 'Black', 'Saint Laurent', 'Coat'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/9/09-04-2021_TH_652506-Y36CZ-1164_1_1.jpg', 'Black', 'Saint Laurent', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-03-2021_TC_484284-Y5YA2-1000_1_1.jpg', 'Black', 'Saint Laurent', 'Jacket'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-03-2021_MB_650535-Y36AF-9285_1_1.jpg', 'Cream', 'Saint Laurent', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/5/25-02-2021_AJ_1140242-GHEA_1_1.jpg', 'Grey', 'Stussy', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/4/04-10-2021_JA_1110189-CHAR_1_1.jpg', 'Black', 'Stussy', 'Jacket'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/4/04-10-2021_JB_1904717-WHIT_1_1.jpg', 'White', 'Stussy', 'Tee'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/9/09-09-2021_JA_1914649-HONE_1_1.jpg', 'Yellow', 'Stussy', 'Sweater'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/7/17-06-2021_MB_1110165-BLAC_1_1.jpg', 'Yellow', 'Stussy', 'Button Up'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/1/21-06-2021_BLR_UA52TR590B_1_1.jpg', 'Black', 'Vetements', 'Sweater'),

];

List<Article> bottoms = [
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/2/12-10-2021_GH_HMCI007F21JER0011001_1_1.jpg', 'Black', 'Heron Preston', 'Shorts'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/0/20-09-2021_BLR_C023B0223A-GY_1_1.jpg', 'Grey', 'John Elliot', 'Shorts'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/8/28-09-2021_MB_8045466-A1189_1_1.jpg', 'Black', 'Burberry', 'Pants'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/5/15-07-2021_AJ_DIMES7008CHA_1_1.jpg', 'Grey', 'Dime', 'Pants'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-08-2021_BLR_XMD003-DSI-023_1_1.jpg', 'Black', 'Amiri', 'Denim'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-05-2021_JB_MJSS004-JSA-BLK_1_1.jpg', 'Black', 'Amiri', 'Shorts'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-08-2021_GH_663074-TKP04-1000_1_1.jpg', 'Black', 'Balenciaga', 'Shorts'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/1/11-08-2021_RC_657616-TIW21-4031_m1_1.jpg', 'Blue', 'Balenciag', 'Denim'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/8/28-09-2021_MB_8045466-A1189_1_1.jpg', 'Black', 'Burberry', 'Pants'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/7/17-09-2021_ML_JO191-NV_1_1.jpg', 'Purple', 'Needles', 'Pants'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/7/17-09-21_TC_JO223-MN_1_1.jpg', 'Red', 'Needles', 'Sweatpants'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/0/10-09-2021_GH_DU02A3378-RIG-34_1_1.jpg', 'Brown', 'Rick Owens', 'Sweatpants'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/9/09-04-2021_BB_527389-YS500-1220_1_1.jpg', 'Black', 'Saint Laurent', 'Denim'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-02-2021_ML_116481-BLAC_1_1.jpg', 'Black', 'Stussy', 'Sweatpants'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/7/17-06-2021_LL_116481-BLUE_1_1.jpg', 'Blue', 'Stussy', 'Sweatpants'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-02-2021_GH_113129-BLAC_1_1.jpg', 'Black', 'Stussy', 'Shorts'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-02-2021_JD_113129-REDD_1_1.jpg', 'Red', 'Stussy', 'Shorts'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-10-2021_EC_212WVDT-PTM02-BGE_1_1.jpg', 'Brown', 'Wtaps', 'Pants'),
];

List<Article> shoes = [
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/6/26-04-2021_SI_636599-WA8E9-1000_1_1.jpg', 'Black', 'Balenciaga', 'Shoes'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/9/09-09-2021_JB_611106GUP10-9113_m1_1.jpg', 'White', 'Saint Laurent', 'Shoes'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/9/09-09-2021_RC_4215720MP20-9084_m1_1.jpg', 'White', 'Saint Laurent', 'Shoes'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/9/19-03-2021_AJ_S57-WS0236-P1895-101_1_1.jpg', 'White', 'Maison Margiela', 'Shoes'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/1/01-04-2021_TC_S57WS0399-P4080-H8650_1_1.jpg', 'Black', 'Maison Margiela', 'Shoes'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/5/25-10-2021_LL_MFS003-LPN-124_m1_1.jpg', 'Red', 'Amiri', 'Sneaker'),
  Article('https://www.endclothing.com/us/balenciaga-speed-runner-lt-645056-w2dbq-1015.html', 'Black', 'Balenciaga', 'Shoe'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/0/4/04-11-2020_mox_p1-k111-1_1.jpg', 'Black', 'Comme Des Garcon', 'Sneaker'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/2/0/20-07-2021_JB_P1-K121-2_m1_1.jpg', 'Blue', 'Comme Des Garcon', 'Sneaker'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/7/17-02-2021_JA_625783-1XG70-9102_1_1.jpg', 'White', 'Gucci', 'Sneaker'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/4/14-10-2021_AJ_BG02A1894-991_m1_1.jpg', 'Black', 'Rick Owens', 'Shoes'),
  Article('https://media.endclothing.com/media/f_auto,q_auto:eco/prodmedia/media/catalog/product/1/9/19-02-2021_GH_RU21S-6890-LPO-911_1_1.jpg', 'Black', 'Rick Owens', 'Shoes'),

];

var closet = [tops, bottoms, shoes];
// +++++++++++++++++++++++++++++

void randomize(int seed, var closet) {
  var rng = Random(seed);

  for (var types = 0; types < closet.length; types++) {
    var chosenIndex = rng.nextInt(closet[types].length);
    var chosenArticle = closet[types][chosenIndex];

    print('${types + 1} - ${chosenArticle.brand}, ${chosenArticle.color} ${chosenArticle.type}');
  }
}



void main() {
  print('testing');
  // var rng = Random();
  
  // for (var types = 0; types < closet.length; types++) {
  //   var chosenIndex = rng.nextInt(closet[types].length);
  //   var chosenArticle = closet[types][chosenIndex];
  //   print('${types + 1} - ${chosenArticle.brand}, ${chosenArticle.color} ${chosenArticle.type}');
  // }
}