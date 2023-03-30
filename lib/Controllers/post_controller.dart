import 'package:get/get.dart';
import 'package:social_android/Models/post_model.dart';
import 'package:social_android/Services/post_service.dart';

class PostController extends GetxController {
  var seemore = true.obs;
  var like = false.obs;

  final String textContentPost =
      'ĐỪNG ĐỂ XE LÊN TIẾNG “ÉT-Ô-ÉT” Khi xuất hiện những “red flag” sau, chứng tỏ “ngựa sắt” bạn đang kêu ca mệt mỏi vì bị mài mòn liên tục👇: \n🚩Động cơ nóng như kem\n🚩Động cơ to tiếng như hàng xóm karaoke ngày lễ\n🚩Động cơ yếu như cọng bún thiuThông điệp từ 91% thợ máy khuyến nghị anh em nên thay nhớt định kỳ để tránh sửa chữa tốn kém lên đến 8 triệu đồng* 😲.Thay nhớt đúng hạn, xe bên bạn dài lâu.Đem “chiến mã” đến tiệm sửa xe gần nhất để tút tát với Castrol POWER1 ngay thôi \n👍!#CastrolPOWER1 #TinhNangUuViet #TangTocVuotTroi*\nKhảo sát bởi ADNA với 101 thợ máy sửa xe tại Việt Nam thực hiện trong thời gian 02/11/2022 đến 07/11/2022';

  static var postmodel = [].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    fetchPostModel();
    super.onInit();
  }

  Future<List<PostModel>?> fetchPostModel() async {
    try {
      isLoading(true);

      var postmodelTemp = await PostService.fetchPosts();
     
      postmodelTemp.assignAll(postmodelTemp);
      return postmodelTemp;
    } finally {
      isLoading(false);
    }
  }
}
