part of mi_proyecto;

class BarraInferior extends StatefulWidget {
  const BarraInferior({Key? key}) : super(key: key);

  @override
  State<BarraInferior> createState() => _BarraEstado();
}

class _BarraEstado extends State<BarraInferior> {
  int _currentIndex = 0;
  final views = [PrimeraPantalla(), SegundaPantalla(), TerceraPantalla()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Servicios'),
          BottomNavigationBarItem(
              icon: Icon(Icons.dynamic_form), label: 'Formulario'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
