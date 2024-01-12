import 'package:bizcard_app/pages/widgets/gap.dart';
import 'package:bizcard_app/pages/widgets/input_field_wl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cubit/page_cubit.dart';
import '../signup_viewmodel.dart';

class CompanyFragment extends StatelessWidget {
  final SignupViewModel viewModel;
  const CompanyFragment(this.viewModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (val){
        context.read<PageCubit>().onPageChange(0);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: [
            Text('Company Info',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700, fontSize: 28)),
            Text('Tell us your company details',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xFFB0B0B0))),
            const Gap(size: 20),
            InputFieldWL(controller: viewModel.jobTitleController, label: 'Job title'),
            const Gap(size: 10),
            InputFieldWL(controller: viewModel.companyNameController, label: 'Company Name'),
            const Gap(size: 32),
            ElevatedButton(
                onPressed: () => context.read<PageCubit>().onPageChange(2),
                child: const Text('Continue')),
            const Gap(size: 24),
            TextButton(
                onPressed: () => context.read<PageCubit>().onPageChange(2),
                child: const Text('Skip'))
          ],
        ),
      ),
    );
  }
}
