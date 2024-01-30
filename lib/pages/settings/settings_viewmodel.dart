import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:bizcard_app/base/base_viewmodel.dart';
import 'package:bizcard_app/pages/settings/bottomsheets/confirm_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/settings_bloc.dart';

class SettingsViewModel extends BaseViewModel {

  late TextEditingController controller;
  final ValueNotifier notifier = ValueNotifier(false);

  SettingsViewModel(){
    controller = TextEditingController();
  }
  
  final List options = [
    {'title': 'Account'},
    {'icon': AntIcons.editOutlined, 'label': 'Edit Account', 'color': null},
    {'icon': AntIcons.crownOutlined, 'label': 'Upgrade to Pro', 'color': null},
    {'icon': AntIcons.lineChartOutlined, 'label': 'My Analytics', 'color': null},
    {'title': 'Features'},
    {'icon': AntIcons.apiOutlined, 'label': 'Integrations', 'color': null},
    {'icon': AntIcons.editOutlined, 'label': 'Create email signature', 'color': null},
    {'icon': AntIcons.pictureOutlined, 'label': 'Create virtual background', 'color': null},
    {'icon': AntIcons.mailOutlined, 'label': 'Follow up email', 'color': null},
    {'icon': AntIcons.aliwangwangOutlined, 'label': 'Remove branding', 'color': null},
    {'title': 'Support'},
    {'icon': AntIcons.messageOutlined, 'label': 'Request a feature', 'color': null},
    {'icon': AntIcons.questionCircleOutlined, 'label': 'Help & support', 'color': null},
    {'title': 'Account'},
    {'icon': AntIcons.userDeleteOutlined, 'label': 'Delete account', 'color': Colors.red},

  ];


  confirmSheet(BuildContext context){
    showModalBottomSheet(
      context: context, 
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      builder: (_){
        return ConfirmSheet(
          controller: controller,
          notifier: notifier,
          onDelete: (){
            context.read<SettingsBloc>().add(DeleteAccountEvent());
          });
      });
  }
  
  @override
  void dispose() {

  }

}