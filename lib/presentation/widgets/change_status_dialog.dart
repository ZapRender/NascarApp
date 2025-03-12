import 'package:flutter/material.dart';
import 'package:nascar_app/core/theme/app_colors.dart';

class ChangeStatusDialog extends StatelessWidget {
  const ChangeStatusDialog({super.key});

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
              'Ingrese el nuevo estado',
              style: TextStyle(
                fontSize: 18.0,
                color: AppColors.primaryTextDark,
              ),
            ),
            SizedBox(height: 10.0),
            IntrinsicWidth(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ButtonStatus(
                    status: 'Ingresado',
                    color: AppColors.statusEntered,
                  ),
                  SizedBox(height: 10.0),
                  ButtonStatus(
                    status: 'En progreso',
                    color: AppColors.statusInProgress,
                  ),
                  SizedBox(height: 10.0),
                  ButtonStatus(
                    status: 'Pendiente',
                    color: AppColors.statusPending,
                  ),
                  SizedBox(height: 10.0),
                  ButtonStatus(
                    status: 'Terminado',
                    color: AppColors.statusFinish,
                  ),
                  SizedBox(height: 10.0),
                  ButtonStatus(
                    status: 'terminado',
                    color: AppColors.statusRemoved,
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      AppColors.primaryDark,
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                        left: 8.0,
                        right: 4.0,
                      ),
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
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      AppColors.primaryDark,
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                        left: 8.0,
                        right: 4.0,
                      ),
                    ),
                  ),

                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: AppColors.primaryTextDark,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonStatus extends StatelessWidget {
  final String status;
  final Color color;

  const ButtonStatus({super.key, required this.status, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        padding: WidgetStateProperty.all(EdgeInsets.all(8.0)),
      ),
      child: Text(
        status,
        style: TextStyle(fontSize: 20.0, color: AppColors.primaryTextDark),
      ),
    );
  }
}
