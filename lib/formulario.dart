part of mi_proyecto;

class TerceraPantalla extends StatefulWidget {
  const TerceraPantalla({Key? key}) : super(key: key);

  @override
  State<TerceraPantalla> createState() => _TerceraPantallaEstado();
}

class _TerceraPantallaEstado extends State<TerceraPantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
        ),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(80),
            child: const Text('Formulario de reserva')));
  }
}
