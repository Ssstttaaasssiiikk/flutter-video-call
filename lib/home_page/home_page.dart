import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rmp_video_call/call_page.dart';
import 'package:rmp_video_call/home_page/cubit/cubit.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('зум-от-Марины.orgазм'),
          centerTitle: true,
        ),
        body: BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            final cubit = context.read<HomeCubit>();
            if (state is UserID) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CallPage(
                    callID: cubit.callID.text,
                    userName: cubit.userName.text,
                    userID: cubit.userID,
                  ),
                ),
              );
            } else if (state is InputError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            }
          },
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              final cubit = context.read<HomeCubit>();
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: cubit.userName,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Имя'),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: cubit.callID,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Номер комнаты'),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          cubit.checkController();
                        },
                        child: const Text('Войти'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
