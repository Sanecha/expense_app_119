import '../data/model/cat_model.dart';

class AppConstData {
  static num balance = 0.0;
  static List<CatModel> mCat = [
    CatModel(
        catId: 1,
        catName: "Coffee",
        catImgPath: "lib/assets/images/coffee.jpg"),
    CatModel(
        catId: 2,
        catName: "Petrol",
        catImgPath: "lib/assets/images/vichle.jpg"),
    CatModel(
        catId: 3,
        catName: "Shopping",
        catImgPath: "lib/assets/images/shopig.jpg"),
    CatModel(
        catId: 4,
        catName: "Restaurant",
        catImgPath: "lib/assets/images/res.jpg"),
    CatModel(
        catId: 5,
        catName: "FastFood",
        catImgPath: "lib/assets/images/fastfood.jpg"),
    CatModel(
        catId: 6,
        catName: "Rent",
        catImgPath: "lib/assets/images/mobile transfer.jpg"),
  ];

  static Set<String> months = {
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  };

  List<Map<String, dynamic>> expenseData = [
    {
      'day': 'Tuesday,14',
      'shopingList': {
        "myshoping": {
          'cate': 'Shop',
          'shop': '-90',
          'subtitle': 'buy new clothes',
        },
        "myE-items": {
          'cate': 'Electronics',
          'shop': '-1290',
          'subtitle': 'buy new iphone16',
        }
      },
      'total': '-1380'
    },
    {
      'day': 'Monday,13',
      'shopingList': {
        "mytrns": {
          'cate': 'Transportation',
          'shop': '-90',
          'subtitle': 'train ticket',
        },
        "myfood": {
          'cate': 'Eat Food',
          'shop': '-150',
          'subtitle': 'Eat Food',
        }
      },
      'total': '-240'
    }
  ];
}