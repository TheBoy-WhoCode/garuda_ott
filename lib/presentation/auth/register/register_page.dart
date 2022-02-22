import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/themes/themes.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'package:garuda_ott/widgets/widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(gradient: MyColors.scaffoldGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          title: Text(
            "Sign Up",
            style: themeData.textTheme.headline2,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: CustomPannel(
              heightPercentage: 0.75,
              widthPercentage: 0.9,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomTextFormField(
                      textInputType: TextInputType.name,
                      label: Text("Full Name"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormField(
                      textInputType: TextInputType.emailAddress,
                      label: Text("Email Address"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormField(
                      textInputType: TextInputType.phone,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormField(
                      textInputType: TextInputType.visiblePassword,
                      label: Text("Enter Password"),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        logger.i("Sign UP");
                      },
                      child: Text(
                        "Sign Up",
                        style: themeData.textTheme.headline4,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        const Text("By Signing up, you are agreed with our"),
                        TextButton(
                          onPressed: () {
                            logger.i("Terms & Conditions");
                          },
                          child: const Text(
                            "Terms & Conditions",
                            style: TextStyle(color: MyColors.textButtonColor),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class CustomPannel extends StatelessWidget {
//   const CustomPannel({
//     Key? key,
//     required this.height,
//     required this.width,
//   }) : super(key: key);

//   final double height;
//   final double width;

//   @override
//   Widget build(BuildContext context) {
//     return CustomPannel(
//       height: height * 0.75,
//       width: width * 0.9,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//         child: Column(
//           children: [
//             const CustomTextFormField(
//               textInputType: TextInputType.name,
//               label: Text("Full Name"),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const CustomTextFormField(
//               textInputType: TextInputType.emailAddress,
//               label: Text("Email Address"),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const CustomTextFormField(
//               textInputType: TextInputType.phone,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const CustomTextFormField(
//               textInputType: TextInputType.visiblePassword,
//               label: Text("Enter Password"),
//               obscureText: true,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text("Sign Up"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
