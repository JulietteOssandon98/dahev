part of mi_proyecto;

class CuartaPantalla extends StatefulWidget {
  const CuartaPantalla({Key? key}) : super(key: key);

  @override
  State<CuartaPantalla> createState() => _CuartaPantallaEstado();
}

class _CuartaPantallaEstado extends State<CuartaPantalla>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );
  int _counter = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80, bottom: 20),
              child: const Image(
                  width: 200, image: AssetImage('assets/images/user.png')),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Juli',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 28,
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Text(
                'Tus mascotas registradas son:',
                style: TextStyle(fontSize: 23, color: Colors.blueGrey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(width: 100, image: AssetImage('assets/images/cat.png')),
                Text(
                  'Luna',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                Image(width: 100, image: AssetImage('assets/images/dog.png')),
                Text('Nala',
                    style:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 200),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TerceraPantalla()));
                },
                child: const Text('+ Agregar mascota'),
              ),
            ),
          ],
        )));
  }
}
