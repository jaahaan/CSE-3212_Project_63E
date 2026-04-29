import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ConverterPageState();
  }
}

class _ConverterPageState extends State {
  TextEditingController controller = TextEditingController();
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
                    child: TextFormField(
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
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.monetization_on),
                        hintText: "Enter Amount",
                        labelText: "Amount",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
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
