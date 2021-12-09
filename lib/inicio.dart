part of mi_proyecto;

class PrimeraPantalla extends StatelessWidget {
  const PrimeraPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotel Pet'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 40, bottom: 10),
                child: Text(
                  'No sólo tú estarás de',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'VACACIONES,',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 28,
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Text(
                'ellos también lo estarán',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 25,
                  color: Colors.blue,
                ),
              ),
            ),
            const Image(
              image: NetworkImage(
                  'https://image.freepik.com/vector-gratis/lindo-perro-gato-amigo-caricatura_138676-2432.jpg'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TerceraPantalla()));
              },
              child: const Text('Reserva su estadía'),
            ),
          ],
        ),
      ),
    );
  }
}
