import 'package:flutter/material.dart';

class CadastrarUsuarioPage extends StatefulWidget {
  const CadastrarUsuarioPage({Key? key}) : super(key: key);

  @override
  State<CadastrarUsuarioPage> createState() => _CadastrarUsuarioPageState();
}

class _CadastrarUsuarioPageState extends State<CadastrarUsuarioPage> {
  var mostrarSenha = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
          Icon(Icons.receipt_long),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Cadastro L&C'),
          )
        ]),
      ),
      body: ListView(children: [
        Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: TextFormField(
          obscureText: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: 'Nome',
              label: Text('Nome:'),
              prefixIcon: Icon(Icons.account_box_rounded),
              border: OutlineInputBorder()),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: TextFormField(
          obscureText: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: 'Ex. exemplo@mail.com',
              label: Text('E-mail:'),
              prefixIcon: Icon(Icons.mail),
              border: OutlineInputBorder()),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: TextFormField(
          obscureText: !mostrarSenha,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: 'Senha',
              label: Text('Senha'),
              prefixIcon: Icon(Icons.lock), //material.icons
              suffix: IconButton(
                onPressed: () {
                  setState(() {
                    mostrarSenha = !mostrarSenha;
                  });
                },
                icon: Icon(mostrarSenha == true
                    ? Icons.visibility_off
                    : Icons.remove_red_eye_outlined),
              ),
              border: OutlineInputBorder()),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: TextFormField(
          obscureText: !mostrarSenha,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: 'Confirmar senha',
              label: Text('Confirmar senha'),
              prefixIcon: Icon(Icons.lock), //material.icons
              suffix: IconButton(
                onPressed: () {
                  setState(() {
                    mostrarSenha = !mostrarSenha;
                  });
                },
                icon: Icon(mostrarSenha == true
                    ? Icons.visibility_off
                    : Icons.remove_red_eye_outlined),
              ),
              border: OutlineInputBorder()),
        ),
      ),
      Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Aceitar Termos'),
                  subtitle: Text('Declaro que li e que aceito os Termos de Uso e Política de Privacidade'),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() => isChecked = value!);
                 },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
               ),
            ),
            Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 5, 0),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Cadastrar',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen, minimumSize: const Size(100, 50)),
        ),
      ),
    ]));
  }
}