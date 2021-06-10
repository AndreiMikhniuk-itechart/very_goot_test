import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:very_good_test/view/auth/cubit/auth_cubit.dart';
import 'package:very_good_test/view/home/cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    context.read<AuthCubit>().isLogedIn();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubitCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: BlocListener<HomeCubitCubit, HomeCubitState>(
              listener: (context, state) {
                _controller.jumpToPage(
                  state.currentIndex,
                );
              },
              child: PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.red,
                    child: const Center(
                      child: Icon(Icons.home),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.green,
                    child: const Center(
                      child: Icon(Icons.comment),
                    ),
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      state.when(
                          initial: () {},
                          loggedIn: () => print('user logedIn'),
                          loggedOut: () => print('you need to log in'));
                    },
                    builder: (context, state) {
                      if (state == AuthState.loggedIn()) {
                        return Center(
                          child: Icon(Icons.login),
                        );
                      } else {
                        return Center(
                          child: Icon(Icons.error),
                        );
                      }
                    },
                  ),
                  const Center(
                    child: Icon(Icons.ac_unit_sharp),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BlocBuilder<HomeCubitCubit, HomeCubitState>(
              builder: (context, state) {
                return CupertinoTabBar(
                  onTap: (index) {
                    context.read<HomeCubitCubit>().goToPage(index);
                  },
                  activeColor: Colors.red,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.comment),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.login),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.ac_unit_sharp),
                    ),
                  ],
                  currentIndex: state.currentIndex,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
