import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'criar_produto_widget.dart' show CriarProdutoWidget;
import 'package:flutter/material.dart';

class CriarProdutoModel extends FlutterFlowModel<CriarProdutoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Add Product)] action in Button widget.
  ApiCallResponse? addProduct;
  // Stores action output result for [Backend Call - API (Upload Image Product)] action in Button widget.
  ApiCallResponse? uploadImagem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();
  }
}
