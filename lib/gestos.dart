part of mi_proyecto;

class CuartaPantalla extends StatefulWidget {
  const CuartaPantalla({Key? key}) : super(key: key);

  @override
  State<CuartaPantalla> createState() => _CuartaPantallaEstado();
}

class _CuartaPantallaEstado extends State<CuartaPantalla> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Juego"),
      ),
      body: Container(
          child: GestureDetector(
              onTap: () {
                print("hola mundo, el conteo es $_counter");
                setState(() {
                  _counter++;
                });
              },
              child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: NetworkImage(
                            'https://image.freepik.com/vector-gratis/diseno-patron-pow-colorido-lindo-gatito_1017-14710.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(20.0)),
                      Text("¿ Cuántas patitas hay ? $_counter",
                          style: Theme.of(context).textTheme.headline4),
                    ],
                  )))),
    );
  }
}
