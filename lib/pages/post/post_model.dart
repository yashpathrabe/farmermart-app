import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'post_widget.dart' show PostWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostModel extends FlutterFlowModel<PostWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // Stores action output result for [Backend Call - Create Document] action in category widget.
  PostRecord? crop;
  // State field(s) for entertitle widget.
  FocusNode? entertitleFocusNode;
  TextEditingController? entertitleTextController;
  String? Function(BuildContext, String?)? entertitleTextControllerValidator;
  // State field(s) for itemquantity widget.
  String? itemquantityValue;
  FormFieldController<String>? itemquantityValueController;
  // State field(s) for expectedprice widget.
  FocusNode? expectedpriceFocusNode;
  TextEditingController? expectedpriceTextController;
  String? Function(BuildContext, String?)? expectedpriceTextControllerValidator;
  // State field(s) for entermobileno widget.
  FocusNode? entermobilenoFocusNode;
  TextEditingController? entermobilenoTextController;
  String? Function(BuildContext, String?)? entermobilenoTextControllerValidator;
  // State field(s) for seletarea widget.
  String? seletareaValue;
  FormFieldController<String>? seletareaValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    entertitleFocusNode?.dispose();
    entertitleTextController?.dispose();

    expectedpriceFocusNode?.dispose();
    expectedpriceTextController?.dispose();

    entermobilenoFocusNode?.dispose();
    entermobilenoTextController?.dispose();
  }
}
