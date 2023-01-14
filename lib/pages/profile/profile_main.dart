import 'package:flutter/material.dart';
import 'package:toy_project/components/profile_buttons.dart';
import 'package:toy_project/components/profile_count_info.dart';
import 'package:toy_project/components/profile_drawer.dart';
import 'package:toy_project/components/profile_header.dart';
import 'package:toy_project/components/profile_tab.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: const [
          SizedBox(height: 20,),
          ProfileHeader(),
          SizedBox(height: 20,),
          ProfileCountInfo(),
          SizedBox(height: 20,),
          ProfileButtons(),
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text('Profile'),
      centerTitle: true,
    );
  }
}
