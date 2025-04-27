import 'package:flutter/material.dart';
import 'package:flutter_application_1/layouts/responsive_layout.dart';

class ResponsiveLayoutPage extends StatelessWidget {
  const ResponsiveLayoutPage({super.key});

  final List<String> languages = const ['Dart', 'JavaScript', 'PHP', 'C++'];

  Widget _buildButtonsPortrait() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('BUTTON 1'),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('BUTTON 2'),
          ),
        ),
      ],
    );
  }

  Widget _buildButtonsLandscape() {
    return Column(
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('BUTTON 1')),
        const SizedBox(height: 10),
        ElevatedButton(onPressed: () {}, child: const Text('BUTTON 2')),
      ],
    );
  }

  Widget _buildLanguageList() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: languages.length,
      separatorBuilder: (context, index) => const Divider(color: Colors.white),
      itemBuilder:
          (context, index) => ListTile(
            title: Center(child: Text(languages[index])),
            tileColor: Colors.grey[900],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Layouts')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ResponsiveLayout(
          portraitBuilder:
              (context) => ListView(
                children: [
                  Center(
                    child: Text(
                      'Cheetah Coding',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildButtonsPortrait(),
                  const SizedBox(height: 20),
                  _buildLanguageList(),
                ],
              ),
          landscapeBuilder:
              (context) => Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cheetah Coding',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 20),
                        _buildButtonsLandscape(),
                      ],
                    ),
                  ),
                  const VerticalDivider(color: Colors.white, width: 1),
                  Expanded(child: _buildLanguageList()),
                ],
              ),
        ),
      ),
    );
  }
}
