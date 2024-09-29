import 'package:flutter/material.dart';
import 'package:untitled6/main.dart';
import 'package:untitled6/Home_screen.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});
  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  late TextEditingController _textControler;
  late TextEditingController _textControlerpass;
  bool pass_vis = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textControler = TextEditingController();
    _textControlerpass = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textControler.dispose();
    _textControlerpass.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              },
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode))
        ],
        elevation: 0,
        title: const Text(
          'Login Page',
          style: TextStyle(
            color: Color.fromARGB(255, 3, 25, 150),
            fontSize: 33,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(79, 74, 87, 101),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 41, 240),
                    fontSize: 55.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                //-------------------container TextField [1]----------------------
                Container(
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        gapPadding: 5,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            _textControler.clear();
                          },
                          icon: const Icon(
                            Icons.clear,
                            size: 30,
                            color: Color.fromARGB(255, 22, 135, 233),
                          )),
                      prefixIcon: const Icon(
                        Icons.person,
                        size: 30,
                        color: Color.fromARGB(255, 22, 135, 233),
                      ),
                      labelText: "UserName",
                      labelStyle: const TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 0, 19, 14)),
                      hintText: "Name",
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 22, 135, 233),
                      ),
                    ),
                    controller: _textControler,
                    keyboardType: TextInputType.text,
                  ),
                ),

                //-------------------container TextField passowrd [2]----------------------
                Container(
                  height: 70,
                  decoration: const BoxDecoration(),
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        gapPadding: 5,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            _textControlerpass.clear();
                          },
                          icon: const Icon(
                            Icons.clear,
                            size: 30,
                            color: Color.fromARGB(255, 22, 135, 233),
                          )),
                      // prefixIcon: const Icon(
                      //   Icons.lock,
                      //   size: 30,
                      //   color: Color.fromARGB(255, 22, 135, 233),
                      // ),
                      prefixIcon: IconButton(
                        icon: Icon(
                            pass_vis ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            pass_vis = !pass_vis;
                          });
                        },
                      ),
                      labelText: "Passowrd",
                      labelStyle: const TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 0, 19, 14)),
                      hintText: "Passowrd",
                      hintStyle: const TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 22, 135, 233),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    controller: _textControlerpass,
                    obscureText: pass_vis,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: const Icon(
                    Icons.arrow_circle_right,
                    size: 70,
                    color: Color.fromARGB(255, 6, 41, 240),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
