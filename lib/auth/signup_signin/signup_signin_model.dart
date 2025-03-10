import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'signup_signin_widget.dart' show SignupSigninWidget;
import 'package:flutter/material.dart';

class SignupSigninModel extends FlutterFlowModel<SignupSigninWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtNameSignup widget.
  FocusNode? txtNameSignupFocusNode;
  TextEditingController? txtNameSignupTextController;
  String? Function(BuildContext, String?)? txtNameSignupTextControllerValidator;
  // State field(s) for txtEmailSignup widget.
  FocusNode? txtEmailSignupFocusNode;
  TextEditingController? txtEmailSignupTextController;
  String? Function(BuildContext, String?)?
      txtEmailSignupTextControllerValidator;
  // State field(s) for txtPasswordSignup widget.
  FocusNode? txtPasswordSignupFocusNode;
  TextEditingController? txtPasswordSignupTextController;
  late bool txtPasswordSignupVisibility;
  String? Function(BuildContext, String?)?
      txtPasswordSignupTextControllerValidator;
  // Stores action output result for [Backend Call - API (Signup)] action in btnRegistrar widget.
  ApiCallResponse? signup;
  // State field(s) for txtEmailSignin widget.
  FocusNode? txtEmailSigninFocusNode;
  TextEditingController? txtEmailSigninTextController;
  String? Function(BuildContext, String?)?
      txtEmailSigninTextControllerValidator;
  // State field(s) for txtPasswordSignin widget.
  FocusNode? txtPasswordSigninFocusNode;
  TextEditingController? txtPasswordSigninTextController;
  late bool txtPasswordSigninVisibility;
  String? Function(BuildContext, String?)?
      txtPasswordSigninTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login)] action in btnEntrar widget.
  ApiCallResponse? login;

  @override
  void initState(BuildContext context) {
    txtPasswordSignupVisibility = false;
    txtPasswordSigninVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    txtNameSignupFocusNode?.dispose();
    txtNameSignupTextController?.dispose();

    txtEmailSignupFocusNode?.dispose();
    txtEmailSignupTextController?.dispose();

    txtPasswordSignupFocusNode?.dispose();
    txtPasswordSignupTextController?.dispose();

    txtEmailSigninFocusNode?.dispose();
    txtEmailSigninTextController?.dispose();

    txtPasswordSigninFocusNode?.dispose();
    txtPasswordSigninTextController?.dispose();
  }
}
