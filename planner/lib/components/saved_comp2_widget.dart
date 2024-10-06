import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'saved_comp2_model.dart';
export 'saved_comp2_model.dart';

class SavedComp2Widget extends StatefulWidget {
  const SavedComp2Widget({
    super.key,
    required this.venueRef,
  });

  final DocumentReference? venueRef;

  @override
  State<SavedComp2Widget> createState() => _SavedComp2WidgetState();
}

class _SavedComp2WidgetState extends State<SavedComp2Widget> {
  late SavedComp2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SavedComp2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 12.0),
      child: StreamBuilder<VenuesRecord>(
        stream: VenuesRecord.getDocument(widget.venueRef!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }

          final button2VenuesRecord = snapshot.data!;

          return Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: const Color(0xFF4B39EF),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: const Color(0x4C4B39EF),
                width: 2.0,
              ),
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'BOOK NOW',
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Colors.white,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          );
        },
      ),
    );
  }
}
