import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  final TextEditingController controller;
  // @required를 붙이면 반듯이 속성을 전달해 줘야함.
  // {}을 쓰면 변수 controller:propertyToGive 명을 사용해서 속정을 전달
  LoginHeader({@required this.controller});
  @override
  Widget build(BuildContext context) {
    return LoginTextField(controller);
  }
}

//간단한 텍스트 필드가 아니라 컨테이너에 속성을 많이 넣은 위젯이므로 새로운 위젯을 생성하는게 좋다.
class LoginTextField extends StatelessWidget {
  final TextEditingController controller;

  LoginTextField(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      height: 50.0,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: TextField(
          decoration: InputDecoration.collapsed(hintText: 'User Id'),
          controller: controller),
    );
  }
}
