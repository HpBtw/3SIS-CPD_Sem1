import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ironkey/app_theme.dart';
import 'package:ironkey/models/password_complexity.dart';
import 'package:ironkey/password_generator.dart';
import 'package:ironkey/password_type_enum.dart';
import 'package:ironkey/pin_password_generator.dart';
import 'package:ironkey/standard_password_generator.dart';

void main() {
  runApp(IronKeyApp());
}

class IronKeyApp extends StatelessWidget {
  const IronKeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: IronKeyScreen(),
    );
  }
}

class IronKeyScreen extends StatefulWidget {
  const IronKeyScreen({super.key});

  @override
  State<IronKeyScreen> createState() => _IronKeyScreenState();
}

class _IronKeyScreenState extends State<IronKeyScreen> {
  final TextEditingController _passwordController =
      TextEditingController(); //criação de uma variavel com _ significa que ela é privada

  int maxCharacters = 12;
  bool isEditable = false;
  bool includeUpcase = true;
  bool includeLwcase = true;
  bool includeNum = true;
  bool includeSym = false;

  PasswordTypeEnum passwordTypeSelected = PasswordTypeEnum.pin;

  PasswordComplexity selectedComplexity = PasswordComplexity.high;

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void copyPassword(String password) {
    Clipboard.setData(ClipboardData(text: password));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Senha copiada!')));
  }

  void generatePassword() {
    final PasswordGenerator generator;

    switch (passwordTypeSelected) {
      case PasswordTypeEnum.pin:
        generator = PinPasswordGenerator();
        break;

      case PasswordTypeEnum.standard:
        generator = StandardPasswordGenerator(
          includeLowercase: includeLwcase,
          includeUppercase: includeUpcase,
          includeNumbers: includeNum,
          includeSymbols: includeSym,
        );
        break;
    }

    setState(() {
      _passwordController.text = generator.generate(maxCharacters);
    });

    // const upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    // const lower = "abcdefghijklmnopqrstuvwxyz";
    // const numbers = "0123456789";
    // const symbols = "!@#\$%&*";
    // final chars = upper + lower + numbers + symbols;
    // final random = Random();
    // setState(() {
    //   _passwordController.text = List.generate(
    //     maxCharacters,
    //     (_) => chars[random.nextInt(chars.length)],
    //   ).join();
    // });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(  
                    children: [
                      ClipOval(
                        child: SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            "assets/images/ironman.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Sua senha segura",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        enabled: isEditable,
                        controller: _passwordController,
                        maxLength: maxCharacters,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: _passwordController.text.isNotEmpty
                              ? IconButton(
                                  onPressed: () {
                                    copyPassword(_passwordController.text);
                                  },
                                  icon: Icon(Icons.copy),
                                )
                              : null,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Tipo de senha"),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile(
                              value: PasswordTypeEnum.pin,
                              groupValue: passwordTypeSelected,
                              title: Text("PIN"),
                              onChanged: (value) {
                                setState(() {
                                  passwordTypeSelected =
                                      value!; // ! significa que a variavel não pode ser nula
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RadioListTile(
                              value: PasswordTypeEnum.standard,
                              groupValue: passwordTypeSelected,
                              title: Text("Senha padrão"),
                              onChanged: (value) {
                                setState(() {
                                  passwordTypeSelected = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      Divider(color: colorScheme.outline),
                      SizedBox(height: 20),

                      Row(
                        children: [
                          Icon(isEditable ? Icons.lock_open : Icons.lock),
                          SizedBox(width: 8),
                          Expanded(child: Text("Permitir a edição de senha?")),
                          Switch(
                            value: isEditable,
                            onChanged: (value) {
                              setState(() {
                                isEditable = value;
                              });
                            },
                          ),
                        ],
                      ),

                      // if (isEditable) Text("estou no modo de edição"),
                      if (isEditable) ...[
                        const SizedBox(height: 20),
                        DropdownButtonFormField<PasswordComplexity>(
                          value: selectedComplexity,
                          isExpanded: true,
                          decoration: const InputDecoration(
                            labelText: 'Complexidade da senha',
                            border: OutlineInputBorder(),
                          ),
                          items: PasswordComplexity.values.map((complexity) {
                            return DropdownMenuItem(
                              value: complexity,
                              child: Text(complexity.title),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedComplexity = value!;
                              maxCharacters = selectedComplexity.length;
                            });
                          },
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Tamanho da senha: $maxCharacters"),
                        ),
                        Slider(
                          value: maxCharacters.toDouble(),
                          min: 4,
                          max: 12,
                          onChanged: (value) {
                            setState(() {
                              maxCharacters = value.toInt();
                            });
                          },
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text("Maiúsculas"),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: includeUpcase,
                                onChanged: (value) {
                                  setState(() {
                                    includeUpcase =
                                        value ??
                                        false; // ?? questiona se é nulo, se for pega o valor default (false)
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text("Minúsculas"),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: includeLwcase,
                                onChanged: (value) {
                                  setState(() {
                                    includeLwcase =
                                        value ??
                                        false; // ?? questiona se é nulo, se for pega o valor default (false)
                                  });
                                },
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text("Números"),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: includeNum,
                                onChanged: (value) {
                                  setState(() {
                                    includeNum =
                                        value ??
                                        false; // ?? questiona se é nulo, se for pega o valor default (false)
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text("Símbolos"),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: includeSym,
                                onChanged: (value) {
                                  setState(() {
                                    includeSym =
                                        value ??
                                        false; // ?? questiona se é nulo, se for pega o valor default (false)
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: generatePassword,
                  child: Text("Gerar senha"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
