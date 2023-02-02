class Data2 {
  bool? Status;
  String? MSG;

  Data2.fromJson(Map<String, dynamic> json) {
    Status = json['status'];
    MSG = json['msg'];
  }
}
