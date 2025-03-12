import 'package:flutter/material.dart';
import 'package:nascar_app/core/theme/app_colors.dart';
import 'package:nascar_app/presentation/widgets/ask_pin_dialog.dart';
import 'package:nascar_app/presentation/widgets/change_status_dialog.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      appBar: AppBar(
        backgroundColor: AppColors.darkBackground,
        leading: Icon(Icons.arrow_back, color: AppColors.primaryTextDark),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ChangeStatusDialog();
                  },
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.error),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                padding: WidgetStateProperty.all(
                  EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 4.0),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'En progreso',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: AppColors.primaryTextDark,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: AppColors.primaryTextDark),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '10885 Gustavo chabarro HINO SOS',
              style: TextStyle(
                color: AppColors.primaryTextDark,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.date_range_outlined,
                  color: AppColors.primaryTextDark.withValues(alpha: 0.5),
                ),

                Card(
                  color: AppColors.darkBackground,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(
                      color: AppColors.primaryTextDark.withValues(alpha: 0.5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Marzo 12 2025',
                      style: TextStyle(
                        color: AppColors.primaryTextDark.withValues(alpha: 0.5),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Text(
              'Bloque, tapas, cigueñal, culata con íñas, 4 bielas, 4 listones.',
              style: TextStyle(
                color: AppColors.primaryTextDark,
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider(color: AppColors.primaryTextDark.withValues(alpha: 0.5)),
            Row(
              children: [
                Text(
                  'Bloque: ',
                  style: TextStyle(
                    color: AppColors.primaryTextDark,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Descripción del bloque',
                  style: TextStyle(
                    color: AppColors.primaryTextDark,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Cilindro: ',
                  style: TextStyle(
                    color: AppColors.primaryTextDark,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Descripción del bloque',
                  style: TextStyle(
                    color: AppColors.primaryTextDark,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Cigueñal: ',
                  style: TextStyle(
                    color: AppColors.primaryTextDark,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Descripción del bloque',
                  style: TextStyle(
                    color: AppColors.primaryTextDark,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '4bielas: ',
                  style: TextStyle(
                    color: AppColors.primaryTextDark,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Descripción del bloque',
                  style: TextStyle(
                    color: AppColors.primaryTextDark,
                    fontSize: 20.0,
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
