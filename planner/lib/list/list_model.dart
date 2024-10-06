import '/components/addpeople_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_widget.dart' show ListWidget;
import 'package:flutter/material.dart';

class ListModel extends FlutterFlowModel<ListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for addpeople component.
  late AddpeopleModel addpeopleModel;

  @override
  void initState(BuildContext context) {
    addpeopleModel = createModel(context, () => AddpeopleModel());
  }

  @override
  void dispose() {
    addpeopleModel.dispose();
  }
}
