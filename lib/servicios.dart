part of mi_proyecto;

class SegundaPantalla extends StatefulWidget {
  const SegundaPantalla({Key? key}) : super(key: key);

  @override
  State<SegundaPantalla> createState() => _SegundaPantallaEstado();
}

class _SegundaPantallaEstado extends State<SegundaPantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Servicios"),
            leading: CloseButton(),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  print("TextButton Apretado");
                },
                child: const Text("Guardar"),
              )
            ]),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(80),
            child: const Text('Servicios')));
  }
}
