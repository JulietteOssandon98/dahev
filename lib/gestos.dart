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
    return GestureDetector(
        onTap: () {
          print("hola mundo, el conteo es $_counter");
          setState(() {
            _counter++;
          });
        },
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("../assets/patitas.jpg"),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("¿Cuáantas Patitas encuentras? $_counter",
                    style: Theme.of(context).textTheme.headline4),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Volver!"))
              ],
            )));
  }
}
