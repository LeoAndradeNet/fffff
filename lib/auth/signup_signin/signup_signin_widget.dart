import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'signup_signin_model.dart';
export 'signup_signin_model.dart';

class SignupSigninWidget extends StatefulWidget {
  const SignupSigninWidget({super.key});

  @override
  State<SignupSigninWidget> createState() => _SignupSigninWidgetState();
}

class _SignupSigninWidgetState extends State<SignupSigninWidget>
    with TickerProviderStateMixin {
  late SignupSigninModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupSigninModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.txtNameSignupTextController ??= TextEditingController();
    _model.txtNameSignupFocusNode ??= FocusNode();

    _model.txtEmailSignupTextController ??= TextEditingController();
    _model.txtEmailSignupFocusNode ??= FocusNode();

    _model.txtPasswordSignupTextController ??= TextEditingController();
    _model.txtPasswordSignupFocusNode ??= FocusNode();

    _model.txtEmailSigninTextController ??= TextEditingController();
    _model.txtEmailSigninFocusNode ??= FocusNode();

    _model.txtPasswordSigninTextController ??= TextEditingController();
    _model.txtPasswordSigninFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment(0.0, 0),
          child: TabBar(
            labelColor: FlutterFlowTheme.of(context).primaryText,
            unselectedLabelColor: FlutterFlowTheme.of(context).secondaryText,
            labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Inter Tight',
                  letterSpacing: 0.0,
                ),
            unselectedLabelStyle:
                FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Inter Tight',
                      letterSpacing: 0.0,
                    ),
            indicatorColor: FlutterFlowTheme.of(context).primary,
            tabs: [
              Tab(
                text: 'Registrar',
              ),
              Tab(
                text: 'Entrar',
              ),
            ],
            controller: _model.tabBarController,
            onTap: (i) async {
              [() async {}, () async {}][i]();
            },
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _model.tabBarController,
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 200.0,
                      child: TextFormField(
                        controller: _model.txtNameSignupTextController,
                        focusNode: _model.txtNameSignupFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Seu nome',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.txtNameSignupTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      child: TextFormField(
                        controller: _model.txtEmailSignupTextController,
                        focusNode: _model.txtEmailSignupFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Seu e-mail',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.txtEmailSignupTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      child: TextFormField(
                        controller: _model.txtPasswordSignupTextController,
                        focusNode: _model.txtPasswordSignupFocusNode,
                        autofocus: false,
                        obscureText: !_model.txtPasswordSignupVisibility,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Sua senha',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          suffixIcon: InkWell(
                            onTap: () => safeSetState(
                              () => _model.txtPasswordSignupVisibility =
                                  !_model.txtPasswordSignupVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.txtPasswordSignupVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model
                            .txtPasswordSignupTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        Function() _navigate = () {};
                        _model.signup = await AuthGroup.signupCall.call(
                          name: _model.txtNameSignupTextController.text,
                          email: _model.txtEmailSignupTextController.text,
                          password: _model.txtPasswordSignupTextController.text,
                        );

                        if ((_model.signup?.succeeded ?? true)) {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signIn(
                            authenticationToken: AuthGroup.signupCall.authToken(
                              (_model.signup?.jsonBody ?? ''),
                            ),
                            userData: UserStruct(
                              email: _model.txtEmailSignupTextController.text,
                              name: _model.txtNameSignupTextController.text,
                            ),
                          );
                          _navigate = () => context.goNamedAuth(
                              LoggedWidget.routeName, context.mounted);
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Erro'),
                                content: Text((_model.signup?.bodyText ?? '')),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }

                        _navigate();

                        safeSetState(() {});
                      },
                      text: 'Criar Conta',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ].divide(SizedBox(height: 15.0)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 200.0,
                      child: TextFormField(
                        controller: _model.txtEmailSigninTextController,
                        focusNode: _model.txtEmailSigninFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Seu e-mail',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.txtEmailSigninTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      child: TextFormField(
                        controller: _model.txtPasswordSigninTextController,
                        focusNode: _model.txtPasswordSigninFocusNode,
                        autofocus: false,
                        obscureText: !_model.txtPasswordSigninVisibility,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Sua senha',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          suffixIcon: InkWell(
                            onTap: () => safeSetState(
                              () => _model.txtPasswordSigninVisibility =
                                  !_model.txtPasswordSigninVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.txtPasswordSigninVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model
                            .txtPasswordSigninTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        Function() _navigate = () {};
                        _model.login = await AuthGroup.loginCall.call(
                          email: _model.txtEmailSigninTextController.text,
                          password: _model.txtPasswordSigninTextController.text,
                        );

                        if ((_model.login?.succeeded ?? true)) {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signIn(
                            authenticationToken: AuthGroup.loginCall.authToken(
                              (_model.login?.jsonBody ?? ''),
                            ),
                            userData: UserStruct(
                              email: _model.txtEmailSigninTextController.text,
                            ),
                          );
                          _navigate = () => context.goNamedAuth(
                              LoggedWidget.routeName, context.mounted);
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Erro'),
                                content: Text((_model.login?.bodyText ?? '')),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }

                        _navigate();

                        safeSetState(() {});
                      },
                      text: 'Entrar',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ].divide(SizedBox(height: 15.0)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
