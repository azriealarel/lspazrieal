import 'package:lspazriealconstant/route_constants.dart';
import 'package:lspazrieal/pages/Pengeluaran.dart';
import 'package:lspazrieal/pages/Pemasukan.dart';
import 'package:lspazrieal/pages/DetailCashFlowPage.dart';
import 'package:lspazrieal/pages/HomePage.dart';
import 'package:lspazrieal/pages/LoginPage.dart';
import 'package:lspazrieal/pages/SettingsPage.dart';
import 'package:lspazrieal/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

final routes = {
  loginRoute: (BuildContext context) => LoginPage(),
  homeRoute: (BuildContext context) => HomePage(),
  settingsRoute: (BuildContext context) => SettingsPage(),
  addExpenseRoute: (BuildContext context) => AddExpenditurePage(),
  addIncomeRoute: (BuildContext context) => AddIncomePage(),
  detailCashFlowRoute: (BuildContext context) => DetailCashFlowPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "lspazrieal",
      theme: ThemeData(primaryColor: Colors.deepPurple),
      routes: routes,
    );
  }
}
