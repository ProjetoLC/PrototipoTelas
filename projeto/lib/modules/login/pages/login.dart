import 'package:flutter/material.dart';
import 'package:projeto/modules/index/pages/index.dart';
import 'package:projeto/modules/usuario/pages/cadastrarUsuario.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mostrarSenha = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Image.asset(
        'assets/images/logo.png',
        width: 250,
        height: 250,
      ),
//Email
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
        padding: const EdgeInsets.fromLTRB(20, 30, 5, 0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const IndexPage();
            }));
          },
          child: const Text(
            'Entrar',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.green, minimumSize: const Size(100, 50)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 5, 0),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Esqueci minha senha',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.green, minimumSize: const Size(100, 50)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 5, 0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CadastrarUsuarioPage();
            }));
          },
          child: const Text(
            'Cadastrar',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.green, minimumSize: const Size(100, 50)),
        ),
      ),
    ]));
  }
}
