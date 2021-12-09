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
          title: Text("Animación"),
        ),
        body: Container(
          child: RotationTransition(
              turns: _animation,
              child: const Padding(
                padding: EdgeInsets.only(top: 100),
                child: const Image(
                  image: NetworkImage(
                      'https://cdn-icons.flaticon.com/png/512/2437/premium/2437643.png?token=exp=1639065253~hmac=350fc3185958b5cc3746e64f1bcffccb'),
                ),
              )),
        ));
  }
}
