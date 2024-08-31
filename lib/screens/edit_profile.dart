import 'package:flutter/material.dart';
import 'package:sih_24/constants.dart/states_and_cities.dart';
import 'package:sih_24/theme.dart';
import 'package:sih_24/widgets/custom_button.dart';
import 'package:sih_24/widgets/custom_dropdown.dart';
import 'package:sih_24/widgets/textformfield.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String selectedState = 'Maharashtra';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: const Text(
            "Edit Profile",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: CustomTheme.loginGradientStart,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 20),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomTextFormFieldEditProfile(
                              controller: _nameController,
                              pIcon: const Icon(Icons.person),
                              tType: TextInputType.text,
                              obscureText: false,
                              labletext: 'Name',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return '';
                              },
                            ),
                            const SizedBox(height: 16),
                            CustomTextFormFieldEditProfile(
                              controller: _ageController,
                              pIcon: const Icon(Icons.calendar_today),
                              tType: TextInputType.number,
                              obscureText: false,
                              labletext: 'Age',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your age';
                                }
                                // You can add more age validation logic here if needed.
                                return '';
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: size.height / 14,
                              child:
                                  CustomDropdownFormFieldEditProfile<String?>(
                                selectedValue: selectedState.isNotEmpty
                                    ? selectedState
                                    : null,
                                items: StatesAndCiti.states,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedState = newValue ?? '';
                                  });
                                },
                                labelText: 'State',
                                validator: (value) {
                                  if (value == 'Select State') {
                                    return 'Please select a state';
                                  }
                                  return null;
                                },
                                pIcon: const Icon(Icons.location_pin),
                              ),
                            ),
                            const SizedBox(height: 16),
                            CustomTextFormFieldEditProfile(
                              controller: _passwordController,
                              pIcon: const Icon(Icons.lock),
                              tType: TextInputType.text,
                              obscureText: true,
                              labletext: 'Password',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                }
                                // You can add more password validation logic here if needed.
                                return '';
                              },
                            ),
                            const SizedBox(height: 16),
                            CustomTextFormFieldEditProfile(
                              controller: _confirmPasswordController,
                              pIcon: const Icon(Icons.lock),
                              tType: TextInputType.text,
                              obscureText: true,
                              labletext: 'Confirm Password',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                }
                                if (value != _passwordController.text) {
                                  return 'Passwords do not match';
                                }
                                return '';
                              },
                            ),
                            const SizedBox(height: 32),
                            CustomButton(
                              size: MediaQuery.sizeOf(context) * 0.8,
                              buttontext: "Save",
                              onpressed: () {
                                // Implement registration logic here
                                if (_formKey.currentState!.validate()) {
                                  // All fields are valid, you can perform your action here.
                                  String name = _nameController.text;
                                  int age =
                                      int.tryParse(_ageController.text) ?? 0;
                                  String password = _passwordController.text;
                                  // Now you can use these values as needed.
                                }
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
