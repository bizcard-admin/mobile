import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:bizcard_app/pages/widgets/divider_text.dart';
import 'package:bizcard_app/pages/widgets/gap.dart';
import 'package:bizcard_app/pages/widgets/input_field.dart';
import 'package:bizcard_app/pages/widgets/password_field.dart';
import 'package:bizcard_app/pages/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../routes/app_routes.dart';

class CreateView extends StatefulWidget {
  const CreateView({super.key});

  @override
  State<CreateView> createState() => _CreateViewState();
}

class _CreateViewState extends State<CreateView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          Text(
            'Create your account', style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              fontSize: 28
            )),

          const Gap(size: 20),
          
          InputField(
            label: 'Email Address',
            controller: TextEditingController(),
            prefixIcon: AntIcons.mailOutlined,  
          ),

          const Gap(size: 20),

          PasswordField(
            label: 'Password',
            controller: TextEditingController(),
            prefixIcon: AntIcons.lockOutlined,    
          ),

          const Gap(size: 32),

          ElevatedButton(
            onPressed: ()=>Navigator.pushNamed(context, Routes.photo), 
            child: const Text('Continue')
          ),

          const Gap(size: 20),

          const DividerText(text: 'Or SignUp With'),

          const Gap(size: 20),

          SocialLogin(
            onClick: ()=>{},
          )
        ],
      ),
    );
  }
}