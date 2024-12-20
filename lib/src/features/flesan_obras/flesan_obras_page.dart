import 'package:flutter/material.dart';
import 'flesan_obras_view.dart';

class FlesanObrasPage extends StatelessWidget {
  static const String routeName = '/info';

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const FlesanObrasPage());
  const FlesanObrasPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de datos para las obras
    final obras = [
      {
        'titulo': 'Proyecto de oficinas Tamayo',
        'descripcion': 'Con la demolición, cerco y obras provisionales completados, avanzamos a la fase de excavación del primer anillo, trabajando con precisión y altos estándares de seguridad.',
        'imagenUrl': 'https://api.grupoflesan.com/img/tamayo.png',
      },
      {
        'titulo': 'Avance en demolición de estructuras en mina Barrick',
        'descripcion': 'Seguimos avanzando en el desmantelamiento de la Planta Merrill Crowe. Hemos completado el 80% en el corte de estructuras y un 40% en la demolición de concreto.',
        'imagenUrl': 'https://api.grupoflesan.com/img/barrickmineria.png',
      },
      {
        'titulo': 'Gestión de ingeniería para el Estadio Nacional de Chile',
        'descripcion':
            'La unidad de negocio DiFai gestionó los trabajos de ingeniería para la obra Polideportivo y Explanada Estadio Nacional en Chile, asegurando un desarrollo ordenado y eficiente en cada etapa del proyecto.',
        'imagenUrl': 'https://api.grupoflesan.com/img/difai.jpg',
      },
      {
        'titulo': 'UPC de San Isidro',
        'descripcion': 'Entre los años 2013 y 2015 realizamos la ampliación de la UPC de San Isidro. Esta casa de estudios cuenta más de 5000 m², infraestructura moderna y laboratorios especializados para el desarrollo de la educación superior. ',
        'imagenUrl': 'https://api.grupoflesan.com/img/dvcupc.jpg',
      },
      {
        'titulo': 'Torre Rosales redefinirá el espacio urbano de Lima',
        'descripcion': 'El proyecto Torre Rosales, en preconstrucción, abarca más de 30,000 m² para hotel y oficinas. Con una duración estimada de dos años, transformará el espacio urbano de Lima.',
        'imagenUrl': 'https://api.grupoflesan.com/img/torrerosales.jpg',
      },
      {
        'titulo': 'Wong de Asia',
        'descripcion': 'Implementamos el Hipermercado Wong de Asia en tan solo 5 meses durante el año 2016. Este hipermercado cuenta con más de 5000 m² y genera más de 400 puestos de trabajo en cada temporada de verano.',
        'imagenUrl': 'https://api.grupoflesan.com/img/wongasia.jpg',
      },
    ];

    return FlesanObrasView(obras: obras);
  }
}
