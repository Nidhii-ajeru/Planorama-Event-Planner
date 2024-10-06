import '/components/saved_comp2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'descp1_widget.dart' show Descp1Widget;
import 'package:flutter/material.dart';

class Descp1Model extends FlutterFlowModel<Descp1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for savedComp2 component.
  late SavedComp2Model savedComp2Model;

  @override
  void initState(BuildContext context) {
    savedComp2Model = createModel(context, () => SavedComp2Model());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    savedComp2Model.dispose();
  }
}
