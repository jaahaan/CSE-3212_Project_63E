import 'package:flutter/material.dart';
import 'package:project_63e/widgets/input_field.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ConverterPageState();
  }
}

class _ConverterPageState extends State {
  TextEditingController controller = TextEditingController();
  TextEditingController passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Converter Page"),
        backgroundColor: Colors.brown.shade300,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: Colors.brown.shade300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputField(
                          controller: passController,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (passController.text.isEmpty) {
                              return "Field is Empty!!";
                            }
                            return null;
                          },
                          hintText: "Enter Password",
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock),
                        ),
                        InputField(
                          controller: controller,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          validator: (value) {
                            if (controller.text.isEmpty) {
                              return "Field is empty!!";
                            }
                            return null;
                          },
                          hintText: "Enter amount",
                          labelText: "Amount",
                          prefixIcon: Icon(Icons.monetization_on),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      result = 0;
                      if (_formKey.currentState!.validate()) {
                        result = double.parse(controller.text) * 122.95;
                      }
                      setState(() {});
                    },
                    child: Text("Convert"),
                  ),
                  SizedBox(height: 10),
                  Text("BDT: $result"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
