import 'dart:io';

import 'package:engamrbakr/componts/TextFormFiled.dart';
import 'package:engamrbakr/componts/controller.dart';
import 'package:engamrbakr/componts/itemBottonBar.dart';
import 'package:engamrbakr/core/cache_Helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final controller = StackController();
  File? selectedImage;
  int selectedItmes = 0;
  final TextEditingController nameController =
      TextEditingController(text: CacheHelper.getName());
  final fullNameController =
      TextEditingController(text: CacheHelper.getFullName());
  final EmailController = TextEditingController(text: CacheHelper.getEmail());
  final phoneController = TextEditingController(text: CacheHelper.getPhone());
  final TokenController = TextEditingController(text: CacheHelper.getToken());
  final imageController = TextEditingController(text: CacheHelper.getImage());
  final IdController =
      TextEditingController(text: CacheHelper.getId().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff4A4B4D),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Padding(
              padding: EdgeInsets.only(right: 21),
              child: Icon(
                Icons.shopping_cart_sharp,
                color: Color(0xff4A4B4D),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 102,
                  height: 102,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: IconButton(
                              onPressed: () async {
                                FilePickerResult? result = await FilePicker
                                    .platform
                                    .pickFiles(type: FileType.image);

                                if (result != null) {
                                  selectedImage =
                                      File(result.files.single.path!);
                                  setState(() {});
                                } else {
                                  // User canceled the picker
                                }
                              },
                              icon: const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              ), // Padding
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xffFC6011),
                  ),
                  onPressed: () {},
                  label: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Color(0xffFC6011),
                    ),
                  ),
                ),
                const Text(
                  'Hi there Amr Bakr',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4A4B4D),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Out',
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 47.0,
                ),
                TextForm(
                  Controller: nameController,
                  name: 'Name',
                  isShow: false,
                ),
                const SizedBox(
                  height: 17.0,
                ),
                TextForm(
                  Controller: fullNameController,
                  name: 'Full Name',
                  isShow: false,
                ),
                const SizedBox(
                  height: 17.0,
                ),
                TextForm(
                  Controller: EmailController,
                  name: 'Email',
                  isShow: false,
                ),
                const SizedBox(
                  height: 17.0,
                ),
                TextForm(
                  Controller: phoneController,
                  name: 'Mobile No',
                  isShow: false,
                ),
                const SizedBox(
                  height: 17.0,
                ),
                TextForm(
                  Controller: TokenController,
                  name: 'Token',
                  isShow: false,
                ),
                const SizedBox(
                  height: 17.0,
                ),
                // TextForm(
                //   Controller: nameController,
                //   name: 'Password',
                //   isShow: true,
                // ),
                // const SizedBox(
                //   height: 17.0,
                // ),
                TextForm(
                  Controller: IdController,
                  name: 'Id',
                  isShow: false,
                ),
                const SizedBox(
                  height: 17.0,
                ),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(340, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.selectedItmes = 4;
          setState(() {});
        },
        backgroundColor: controller.selectedItmes == 4
            ? const Color(0xffFC6011)
            : const Color(0xffB6B7B7),
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 70.0,
        child: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 15.0,
          child: Row(
            children: List.generate(
              controller.titles.length,
              (index) => ItemButtonbar(
                isSelected: index == controller.selectedItmes,
                onPress: () {
                  print(index);
                  controller.selectedItmes = index;
                  setState(() {});
                },
                name: controller.titles[index],
                icon: controller.icons[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
