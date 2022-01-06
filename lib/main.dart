library mi_proyecto;

import 'package:flutter/material.dart';

part 'inicio.dart';
part 'servicios.dart';
part 'formulario.dart';
part 'barra_inferior.dart';
part 'user.dart';
part 'serviceform.dart';

void main() {
  runApp(const MaterialApp(
    home: BarraInferior(),
  ));
}
