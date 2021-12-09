part of mi_proyecto;

class TerceraPantalla extends StatefulWidget {
  const TerceraPantalla({Key? key}) : super(key: key);

  @override
  State<TerceraPantalla> createState() => _TerceraPantallaEstado();
}

class _TerceraPantallaEstado extends State<TerceraPantalla> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  'Formulario de mascota',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                  ),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Nombre y Apellido',
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
                  hintText: 'Nombre Mascota',
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
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: const Text('Enviar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
