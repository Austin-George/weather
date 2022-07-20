import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../settings/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Color(0xFF185E00),
          automaticallyImplyLeading: false,
          flexibleSpace: Align(
            alignment: AlignmentDirectional(0, 0.75),
            child: Text(
              'Sample1',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFFFFF900),
                    fontSize: 45,
                  ),
            ),
          ),
          actions: [
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: SettingsWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.dehaze_rounded,
                color: Color(0xFF54FF01),
                size: 50,
              ),
            ),
          ],
          elevation: 2,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF939393),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: '🔎',
                        options: FFButtonOptions(
                          width: 46,
                          height: 46,
                          color: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: textController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Search Location',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Color(0xFFD80001),
                      size: 40,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'user location',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Image.network(
                  'https://picsum.photos/seed/847/600',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'weather',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.thermometerHalf,
                        color: Color(0xFF185E00),
                        size: 40,
                      ),
                    ),
                    Text(
                      'Temperature:',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.wind,
                        color: Color(0xFF185E00),
                        size: 40,
                      ),
                    ),
                    Text(
                      'Wind Speed:',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.cloudversify,
                        color: Color(0xFF185E00),
                        size: 40,
                      ),
                    ),
                    Text(
                      'Humidity:',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.tachometerAlt,
                        color: Color(0xFF185E00),
                        size: 40,
                      ),
                    ),
                    Text(
                      'Pressure:',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
