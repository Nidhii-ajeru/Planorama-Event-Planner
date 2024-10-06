import '/components/saved_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'saved_widget.dart' show SavedWidget;
import 'package:flutter/material.dart';

class SavedModel extends FlutterFlowModel<SavedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for savedComp component.
  late SavedCompModel savedCompModel;

  @override
  void initState(BuildContext context) {
    savedCompModel = createModel(context, () => SavedCompModel());
  }

  @override
  void dispose() {
    savedCompModel.dispose();
  }
}
