import 'package:flutter/material.dart';
import 'package:projeto/modules/index/pages/index.dart';
import 'package:projeto/modules/listas/pages/listas.dart';
import 'package:projeto/modules/produtos/pages/produtos.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({Key? key}) : super(key: key);

  @override
  State<HistoricoPage> createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
  @override
  void initState() {}
  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
          Icon(Icons.history),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Histórico'),
          )
        ]),
      ),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text('Fulano da Silva', style: TextStyle(fontSize: 20),),
                accountEmail: Text('fulano.silva@gmail.com', style: TextStyle(fontSize: 16),)),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'Início',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const IndexPage();
                  }));
                }),
            ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text(
                  'Produtos',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ProdutosPage();
                  }));
                }),
            ListTile(
                leading: const Icon(Icons.view_list_rounded),
                title: const Text(
                  'Listas',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ListasPage();
                  }));
                }),
            ListTile(
                leading: const Icon(Icons.history),
                title: const Text(
                  'Histórico',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HistoricoPage();
                  }));
                }),
          ],
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text('Data da compra: 24/01/2022',
                    style: TextStyle(color: Colors.grey, fontSize: 18))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(onPressed: () {}, child: Text('Ver Lista'))),
          ],
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text('Data da compra: 21/02/2022',
                    style: TextStyle(color: Colors.grey, fontSize: 18))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(onPressed: () {}, child: Text('Ver Lista'))),
          ],
        ),
         Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text('Data da compra: 21/03/2022',
                    style: TextStyle(color: Colors.grey, fontSize: 18))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(onPressed: () {}, child: Text('Ver Lista'))),
          ],
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text('Data da compra: 21/04/2022',
                    style: TextStyle(color: Colors.grey, fontSize: 18))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(onPressed: () {}, child: Text('Ver Lista'))),
          ],
        ),
         Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text('Data da compra: 21/05/2022',
                    style: TextStyle(color: Colors.grey, fontSize: 18))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(onPressed: () {}, child: Text('Ver Lista'))),
          ],
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text('Data da compra: 21/06/2022',
                    style: TextStyle(color: Colors.grey, fontSize: 18))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(onPressed: () {}, child: Text('Ver Lista'))),
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.delete),
      ),
    );
  }
}