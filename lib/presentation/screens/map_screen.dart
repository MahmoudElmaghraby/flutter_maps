import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps/bussiness_logic/cubit/phone_auth/phone_auth_cubit.dart';
import 'package:flutter_maps/constants/strings.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  PhoneAuthCubit phoneAuthCubit = PhoneAuthCubit();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: BlocProvider<PhoneAuthCubit>(
                create: (context) => PhoneAuthCubit(),
                child: ElevatedButton(
                  onPressed: () async {
                    await phoneAuthCubit.logOut();
                    Navigator.of(context).pushReplacementNamed(loginScreen);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(110, 50),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
