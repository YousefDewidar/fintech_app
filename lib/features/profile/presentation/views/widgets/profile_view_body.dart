import 'package:fintech_app/features/profile/presentation/views/widgets/info_prof.dart';
import 'package:fintech_app/features/profile/presentation/views/widgets/setting_card.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InfoProf(),
        SettingCard(
          cardName: 'Edit profile',
          iconPre: Icons.person,
          iconSuf: Icons.arrow_forward_ios_rounded,
          onTap: () {},
        ),
        SettingCard(
          cardName: 'Credits',
          iconPre: Icons.credit_score_sharp,
          onTap: () {},
        ),
        SettingCard(
          cardName: 'Dark mode',
          iconPre: Icons.dark_mode,
          onTap: () {},
        ),
        SettingCard(
          cardName: 'Signout',
          iconSuf: Icons.logout_outlined,
          onTap: () {},
        ),
      ],
    );
  }
}
