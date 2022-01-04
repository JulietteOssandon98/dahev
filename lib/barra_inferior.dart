part of mi_proyecto;

class BarraInferior extends StatefulWidget {
  const BarraInferior({Key? key}) : super(key: key);

  @override
  State<BarraInferior> createState() => _BarraEstado();
}

class _BarraEstado extends State<BarraInferior> {
  int _currentIndex = 0;
  final views = [
    PrimeraPantalla(),
    SegundaPantalla(),
    TerceraPantalla(),
    CuartaPantalla(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(
              icon: Icon(Icons.room_service),
              label: 'Services',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Form',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.pets),
              label: 'User',
              backgroundColor: Colors.blue),
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
