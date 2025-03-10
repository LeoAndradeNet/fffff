import '/auth/signup_signin/signup_signin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SignupSignin component.
  late SignupSigninModel signupSigninModel;

  @override
  void initState(BuildContext context) {
    signupSigninModel = createModel(context, () => SignupSigninModel());
  }

  @override
  void dispose() {
    signupSigninModel.dispose();
  }
}
