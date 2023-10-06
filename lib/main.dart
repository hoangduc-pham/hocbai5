import 'dart:async';

void main() async {
  print('Bắt đầu chương trình');

  // Gọi hàm bất đồng bộ và sử dụng await để chờ kết quả
  String result = await fetchData();
  print('Dữ liệu đã được nhận: $result');

  print('Kết thúc chương trình');
}

// Hàm giả lập việc tải dữ liệu từ mạng (chậm chạp)
Future<String> fetchData() async {
  // Sử dụng Future.delayed để giả lập việc tải dữ liệu
  await Future.delayed(Duration(seconds: 2));
  return 'Dữ liệu tải xong';
}
// Output
// I/flutter ( 8685): Bắt đầu chương trình
// I/flutter ( 8685): Dữ liệu đã được nhận: Dữ liệu tải xong
// I/flutter ( 8685): Kết thúc chương trình