import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp/core/enums/viewstate.dart';
import 'package:temp/core/viewmodels/login_model.dart';
import 'package:temp/ui/shared/app_colors.dart';
import 'package:temp/ui/widgets/Login_header.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginModel>(
      create: (context) => LoginModel(),
      child: Consumer<LoginModel>(
          builder: (context, model, child) => Scaffold(
                backgroundColor: backgroundColor,
                body: Column(
                  children: [
                    LoginHeader(controller: _controller),
                    //상태에 따라 view 변경
                    model.state == ViewState.Busy
                        ? CircularProgressIndicator()
                        : FlatButton(
                            child: Text('Click'),
                            onPressed: () async {
                              var loginSuccess =
                                  await model.login(_controller.text);
                              if (loginSuccess) {
                                //네비게이션으로 이동

                                Navigator.pushNamed(context, '/');
                              }
                            },
                          )
                  ],
                ),
              )),
    );
  }
}
