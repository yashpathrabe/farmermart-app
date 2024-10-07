import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'buyersss_model.dart';
export 'buyersss_model.dart';

class BuyersssWidget extends StatefulWidget {
  const BuyersssWidget({
    super.key,
    required this.category,
    required this.entertitle,
    required this.itemquantity,
    required this.expectedprice,
    this.availablefrom,
    required this.entermobileno,
    required this.selectarea,
    required this.uploadimages,
  });

  final String? category;
  final String? entertitle;
  final int? itemquantity;
  final int? expectedprice;
  final List<DateTimeRange>? availablefrom;
  final int? entermobileno;
  final String? selectarea;
  final String? uploadimages;

  @override
  State<BuyersssWidget> createState() => _BuyersssWidgetState();
}

class _BuyersssWidgetState extends State<BuyersssWidget> {
  late BuyersssModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuyersssModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
