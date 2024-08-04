import 'package:fintech_app/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/widgets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ProfileViewBody(),
    );
  }
}
