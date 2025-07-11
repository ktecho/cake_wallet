import 'package:flutter/material.dart';
import 'package:cake_wallet/src/widgets/base_alert_dialog.dart';

class AlertWithOneAction extends BaseAlertDialog {
  AlertWithOneAction({
    required this.alertTitle,
    required this.alertContent,
    required this.buttonText,
    required this.buttonAction,
    this.alertBarrierDismissible = true,
    this.headerTitleText,
    this.headerImageProfileUrl,
    this.buttonKey,
    Key? key,
  });

  final String alertTitle;
  final String alertContent;
  final String buttonText;
  final VoidCallback buttonAction;
  final bool alertBarrierDismissible;
  final String? headerTitleText;
  final String? headerImageProfileUrl;
  final Key? buttonKey;

  @override
  String get titleText => alertTitle;

  @override
  String get contentText => alertContent;

  @override
  bool get barrierDismissible => alertBarrierDismissible;

  @override
  String? get headerImageUrl => headerImageProfileUrl;

  @override
  String? get headerText => headerTitleText;

  @override
  Widget actionButtons(BuildContext context) {
    return Container(
      width: 300,
      height: 52,
      padding: EdgeInsets.only(left: 12, right: 12),
      color: Theme.of(context).colorScheme.surface,
      child: ButtonTheme(
        minWidth: double.infinity,
        child: TextButton(
          key: buttonKey,
          onPressed: buttonAction,
          // FIX-ME: Style
          //highlightColor: Colors.transparent,
          //splashColor: Colors.transparent,
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
