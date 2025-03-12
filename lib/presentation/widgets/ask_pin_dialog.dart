import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nascar_app/core/theme/app_colors.dart';

class AskPinDialog extends StatelessWidget {
  const AskPinDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(

      backgroundColor: AppColors.darkCard,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Ingrese su PIN',
              style: TextStyle(
                fontSize: 18.0,
                color: AppColors.primaryTextDark,
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: 200.0,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                    LengthLimitingTextInputFormatter(7),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  hintText: 'PIN',
                  hintStyle: TextStyle(color: AppColors.primaryTextDark),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryTextDark),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryTextDark),
                  ),
                ),
                style: TextStyle(color: AppColors.primaryTextDark),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.primaryDark),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                padding: WidgetStateProperty.all(
                  EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 4.0),
                ),
              ),
              child: Text(
                'Aceptar',
                style: TextStyle(
                  fontSize: 18.0,
                  color: AppColors.primaryTextDark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
