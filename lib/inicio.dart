part of mi_proyecto;

class PrimeraPantalla extends StatelessWidget {
  const PrimeraPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hotel Pet'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Show Menu',
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Bienvenido a Hotel Pet'),
              Text('No sólo tú estarás de'),
              Text('VACACIONES,'),
              Text('ellos también lo estarán'),
              const Image(
                image: NetworkImage(
                    'https://static1.st8fm.com/es_US/img/si/750/dog-health-issues-by-breed-and-common-cat-diseases.jpg'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TerceraPantalla()));
                },
                child: const Text('Reserva su estadía'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SegundaPantalla()));
                },
                child: const Text('Revisa nuestros servicios'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Sumado',
          child: Icon(Icons.call),
        ));
  }
}
