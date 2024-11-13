import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/scaffold_viewmodel.dart';

class ScaffoldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<ScaffoldViewModel>(),  // Provide ScaffoldViewModel to the widget tree
      child: Consumer<ScaffoldViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text(viewModel.title),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  ListTile(
                    title: Text('Home'),
                    onTap: () {
                      viewModel.updateTitle("Home");
                      Navigator.pop(context);  // Close the drawer
                    },
                  ),
                  ListTile(
                    title: Text('Profile'),
                    onTap: () {
                      viewModel.updateTitle("Profile");
                      Navigator.pop(context);  // Close the drawer
                    },
                  ),
                  ListTile(
                    title: Text('Settings'),
                    onTap: () {
                      viewModel.updateTitle("Settings");
                      Navigator.pop(context);  // Close the drawer
                    },
                  ),
                ],
              ),
            ),
            body: Center(
              child: Text(
                'Counter: ${viewModel.counter}',
                style: TextStyle(fontSize: 24),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: viewModel.incrementCounter,
              child: Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
