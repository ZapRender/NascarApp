import 'package:flutter/material.dart';
import 'package:nascar_app/core/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBackground,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: null,
                        decoration: InputDecoration(
                          labelText: 'Buscar',
                          labelStyle: TextStyle(color: AppColors.primaryTextDark, fontSize: 20.0),
                          suffixIcon: Icon(Icons.filter_alt_outlined, color: AppColors.primaryTextDark),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        color: AppColors.darkCard,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.sync),
                        color: AppColors.primaryTextDark,
                        onPressed: () {
                          // Acción al presionar el ícono
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return TaskItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.darkCard,
      margin: EdgeInsets.only(bottom: 10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '10885',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryTextDark,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Gustavo chabarro HINO SOS',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: AppColors.primaryTextDark,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Marzo 12 2025',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: AppColors.primaryTextDark.withValues(alpha: 0.6),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty .all(AppColors.error),
                    shape: WidgetStateProperty .all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
                    padding: WidgetStateProperty .all(EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 4.0)),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'En progreso',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: AppColors.primaryTextDark,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down, color: AppColors.primaryTextDark),
                    ],
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}