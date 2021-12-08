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
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Bienvenido a Hotel Pet',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'No sólo tú estarás de',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'VACACIONES,',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 23,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'ellos también lo estarán',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                ),
              ),
            ),
            const Image(
              image: NetworkImage(
                  'https://static1.st8fm.com/es_US/img/si/750/dog-health-issues-by-breed-and-common-cat-diseases.jpg'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TerceraPantalla()));
              },
              child: const Text('Reserva su estadía'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SegundaPantalla()));
              },
              child: const Text('Revisa nuestros servicios'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CuartaPantalla()));
              },
              child: const Text('Juega con los gestos'),
            ),
          ],
        ),
      ),
    );
  }
}
