import 'sizeselector_item_model.dart';import '../../../core/app_export.dart';import 'menu2_item_model.dart';import 'jokiboy_item_model.dart';/// This class defines the variables used in the [product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductModel {Rx<List<SizeselectorItemModel>> sizeselectorItemList = Rx(List.generate(1,(index) => SizeselectorItemModel()));

Rx<List<String>> radioList = Rx(["lbl_10","lbl_50","lbl_1002"]);

Rx<List<Menu2ItemModel>> menu2ItemList = Rx([Menu2ItemModel(image1:ImageConstant.imgImage26.obs,image2:ImageConstant.imgFavoriteOnprimary.obs,text1: "Ice Green Tea".obs,text2: "Price".obs,text3: "2.50".obs,text4: "1.50".obs,text5: "302 rating".obs),Menu2ItemModel(image1:ImageConstant.imgImage28.obs,image2:ImageConstant.imgFavorite.obs,text1: "Amakado Hot".obs,text2: "Price".obs,text3: "3.50".obs,text4: "2.50".obs,text5: "34 rating".obs)]);

Rx<List<JokiboyItemModel>> jokiboyItemList = Rx([JokiboyItemModel(jokiboy:ImageConstant.imgEllipse31.obs,jokiBoy: "Joki boy".obs,ratingCounter: "8.1 Rating".obs,yummmy: "Yummmy...".obs),JokiboyItemModel(jokiboy:ImageConstant.imgEllipse32.obs,jokiBoy: "Tommi".obs,ratingCounter: "3.1 Rating".obs,yummmy: "Service isn’t so good!..".obs)]);

 }
