import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF185E00),
        automaticallyImplyLeading: false,
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFFFFF900),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: SwitchListTile(
                  value: switchListTileValue1 ??= true,
                  onChanged: (newValue) =>
                      setState(() => switchListTileValue1 = newValue),
                  title: Text(
                    'Location',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  subtitle: Text(
                    'On',
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: SwitchListTile(
                  value: switchListTileValue2 ??= true,
                  onChanged: (newValue) =>
                      setState(() => switchListTileValue2 = newValue),
                  title: Text(
                    'Notification',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  subtitle: Text(
                    'On',
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
