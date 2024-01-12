import 'package:bizcard_app/base/base_viewmodel.dart';
import 'package:bizcard_app/pages/cards/builder/bottomsheets/edit_link.dart';
import 'package:flutter/material.dart';

class CardBuilderViewModel extends BaseViewModel {

  //about 
  late TextEditingController fNameController;
  late TextEditingController lNameController;
  late TextEditingController mNameController;
  late TextEditingController prefixController;
  late TextEditingController bioController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController addressController;
  late TextEditingController cityController;
  late TextEditingController stateController;
  late TextEditingController countryController;
  late TextEditingController pincodeController;

  //business
  late TextEditingController titleController;
  late TextEditingController companyNameController;
  late TextEditingController departmentController;
  late TextEditingController companyWebsiteController;
  late TextEditingController aboutController;

  editLink(BuildContext context){
    showModalBottomSheet(
      context: context, 
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      shape: const RoundedRectangleBorder(),
      backgroundColor: Colors.white,
      builder: (_){
        return const EditLinkSheet();
    });
  }

  CardBuilderViewModel(){
    fNameController = TextEditingController();
    lNameController = TextEditingController();
    mNameController = TextEditingController();
    prefixController = TextEditingController();
    bioController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
    cityController = TextEditingController();
    stateController = TextEditingController();
    countryController = TextEditingController();
    pincodeController = TextEditingController();

    titleController = TextEditingController();
    companyNameController = TextEditingController();
    departmentController = TextEditingController();
    companyWebsiteController = TextEditingController();
    aboutController = TextEditingController();
  }


  
  @override
  void dispose() {
  
  }

}