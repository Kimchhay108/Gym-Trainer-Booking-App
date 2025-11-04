import 'package:get/get.dart';

class HomeController extends GetxController {
  // Original observable count
  final count = 0.obs;

  // Bottom nav current index
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // You can initialize something here
  }

  @override
  void onReady() {
    super.onReady();
    // Called when the controller is ready
  }

  @override
  void onClose() {
    super.onClose();
    // Cleanup when controller is destroyed
  }

  // Original method
  void increment() => count.value++;

  // New method for bottom nav
  void changeTab(int index) {
    currentIndex.value = index;
  }
}
