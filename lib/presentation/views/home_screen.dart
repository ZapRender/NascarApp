import 'package:flutter/material.dart';
import 'package:nascar_app/core/theme/app_colors.dart';
import 'package:nascar_app/core/theme/app_text_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.builder(
          itemBuilder: (context, index) => TaskItem(),
          itemCount: 10,
        );
      },
    );
  }
}

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.darkCard,
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value) {}),
          Text('10885', style: AppTextTheme.darkTextTheme.bodyMedium),
          Text('Gustavo chabarro HINO SOS', style: AppTextTheme.darkTextTheme.bodyMedium),
          Text('En progreso', style: AppTextTheme.darkTextTheme.bodyMedium),
        ],
      ),
    );
  }
}
