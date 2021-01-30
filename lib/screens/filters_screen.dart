import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool free = false;
  bool second = false;
  bool third = false;
  bool forth = false;
  bool fifth = false;

  @override
  initState() {
    free = widget.currentFilters['free'];
    second = widget.currentFilters['second'];
    third = widget.currentFilters['third'];
    forth = widget.currentFilters['forth'];
    fifth = widget.currentFilters['fifth'];
    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(
        description,
      ),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus filtros'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'free': free,
                'second': second,
                'third': third,
                'forth': forth,
                'fifth': fifth,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Ajuste a idade para busca.',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Livre',
                  'Todos os filmes livres.',
                  free,
                  (newValue) {
                    setState(
                      () {
                        free = newValue;
                        second = false;
                        third = false;
                        forth = false;
                        fifth = false;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  '12 anos',
                  'Apenas filmes permitidos até 12 anos.',
                  second,
                  (newValue) {
                    setState(
                      () {
                        free = false;
                        second = newValue;
                        third = false;
                        forth = false;
                        fifth = false;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  '14 anos',
                  'Apenas filmes permitidos até 14 anos.',
                  third,
                  (newValue) {
                    setState(
                      () {
                        free = false;
                        second = false;
                        third = newValue;
                        forth = false;
                        fifth = false;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  '16 anos',
                  'Apenas filmes permitidos até 16 anos.',
                  forth,
                  (newValue) {
                    setState(
                      () {
                        free = false;
                        second = false;
                        third = false;
                        forth = newValue;
                        fifth = false;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  '18 anos',
                  'Apenas filmes para maiores de idade.',
                  fifth,
                  (newValue) {
                    setState(
                      () {
                        free = false;
                        second = false;
                        third = false;
                        forth = false;
                        fifth = newValue;
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
