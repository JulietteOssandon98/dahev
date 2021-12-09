part of mi_proyecto;

class SegundaPantalla extends StatefulWidget {
  const SegundaPantalla({Key? key}) : super(key: key);

  @override
  State<SegundaPantalla> createState() => _SegundaPantallaEstado();
}

class _SegundaPantallaEstado extends State<SegundaPantalla> {
  final _controller = TextEditingController.fromValue(
      const TextEditingValue(text: "Valor Inicial"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Servicios Hotel Pet"),
        ),
        body: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.only(left: 25),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10.0)),
                  Image(
                    width: 350,
                    image: NetworkImage(
                        'https://casacuore.cl/images/img/CANIL2_1.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    child: Text(
                      'Habitación básica',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Reservar'),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Image(
                    width: 350,
                    image: NetworkImage(
                        'https://www.guacamouly.com/wp-content/uploads/2021/10/01-perros-remodelacion-habitacion-mascota-1-1.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      'Habitación lujosa',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Reservar'),
                  ),
                ],
              ),
            )));
  }
}
