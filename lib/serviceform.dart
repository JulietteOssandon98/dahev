part of mi_proyecto;

class QuintaPantalla extends StatefulWidget {
  const QuintaPantalla({Key? key}) : super(key: key);

  @override
  State<QuintaPantalla> createState() => _QuintaPantallaEstado();
}

class _QuintaPantallaEstado extends State<QuintaPantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registra de estadia"),
        ),
        body: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Reserva de estadía habitación básica',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        color: Colors.indigo),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Selecciona tu mascota',
                    style: TextStyle(fontSize: 15, color: Colors.indigo),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                        width: 100, image: AssetImage('assets/images/cat.png')),
                    Text(
                      'Luna',
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                    Image(
                        width: 100, image: AssetImage('assets/images/dog.png')),
                    Text('Nala',
                        style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.italic)),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Nombre Dueño',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Dirección',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: '+569 99999999',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Indicaciones',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Reservar'),
                  ),
                ),
              ],
            )));
  }
}
