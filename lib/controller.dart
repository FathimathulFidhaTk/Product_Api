import 'package:get/get.dart';
import 'package:product_api/services.dart';

class TestingController extends GetxController{
  var isLoading = true.obs;
  var TestList = [].obs;

  @override

  void onInit(){
    fetchproduct();
    super.onInit();
  }

  void fetchproduct() async {
    try{
      isLoading(true);
      var Test = await HttpServices.fetchproduct();
      if(Test !=null){
        TestList.value = Test;
      }
    }
    finally {
      isLoading(false);
    }
  }
}