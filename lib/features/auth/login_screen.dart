import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController mobileController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),

              child: Column(
                children: [

                  const SizedBox(height: 20),

                  const Text(
                    "Welcome,",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0xFF1B1B4B),
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "VishoPay Agent",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1843FF),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    height: 3,
                    width: 120,
                    color: Color(0xFF1843FF),
                  ),

                  const SizedBox(height: 40),

                  const Text(
                    "Please Enter Your Mobile Number",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 30),

                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF1843FF),
                        width: 2,
                      ),
                      borderRadius:
                          BorderRadius.circular(15),
                    ),

                    child: Row(
                      children: [
                        const SizedBox(width: 20),

                        const Text(
                          "+91",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(width: 15),

                        Container(
                          width: 1,
                          height: 30,
                          color: Colors.grey,
                        ),

                        const SizedBox(width: 15),

                        Expanded(
                          child: TextField(
                            controller: mobileController,
                            keyboardType:
                                TextInputType.phone,
                            maxLength: 10,
                            decoration:
                                const InputDecoration(
                              border: InputBorder.none,
                              counterText: "",
                              hintText:
                                  "Enter mobile number",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),

                  SizedBox(
                    width: double.infinity,
                    height: 65,

                    child: ElevatedButton(
                      onPressed: () {

                        if (mobileController.text
                                .length ==
                            10) {
                          Navigator.pushNamed(
                            context,
                            '/otp',
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF1843FF),
                        shape:
                            RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                            15,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Send OTP",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.security,
                        color: Color(0xFF1843FF),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Secure Login Powered by\nOTP Verification",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),

                  const Text(
                    "By continuing you agree to",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Terms & Conditions  •  Privacy Policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1843FF),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}