%(★★★★) Hay 4 estudiantes: Carrie, Erma, Ora und Tracy. Todos ellos estudian una carrera de grado y están becados (todos tienen becas distintas y estudian distintas carreras). El objetivo es identificar cual es la beca que recibe cada estudiante y cual es la carrera de grado que estudia a partir de las siguientes pistas:

%Las becas disponibles son: 25000, 30000, 35000 and 40000 USD.
%Las carreras disponibles son: Astronomia, Ingles, Filosofía y Física.
%El estudiante que estudia Astronomía tiene una beca menor que la de Ora.
%Ora estudia Ingles o Filosofía
%El estudiante que estudia Física, tiene una beca 5000 USD mayor que la beca de Carrie.
%Erna tiene una beca 10000 USD mayor que la beca de Carrie.
%Tracy tiene una beca mayor que la que tiene el que estudia Ingles.

carrera_ora(Carrera) :- Carrera == ingles.
carrera_ora(Carrera) :- Carrera == filosofia.

estudiantes(Carrie, Ora, Erma, Tracy) :- 
    Carrie = alumno(carrie, CarreraCarrie, BecaCarrie),
    Ora = alumno(ora, CarreraOra, BecaOra),
    Erma = alumno(erma, CarreraErma, BecaErma),
    Tracy = alumno(tracy, CarreraTracy, BecaTracy), 
    AFisica = alumno(AlumnoFisica, fisica, BecaFisica),
    AFilosofia = alumno(AlumnoFilosofia, filosofia, BecaFilosofia),
    AAstronomia = alumno(AlumnoAstronomia, astronomia, BecaAstronomia),
    AIngles = alumno(AlumnoIngles, ingles, BecaIngles),
    permutation(
      [BecaCarrie, BecaErma, BecaOra, BecaTracy],
      [25000, 30000, 35000, 40000]
      ),
   	permutation(
     [CarreraCarrie, CarreraErma, CarreraOra, CarreraTracy],
     [ingles, filosofia, astronomia, fisica]
     ),
    permutation(
    [Carrie, Erma, Ora, Tracy],
    [AFisica, AFilosofia, AAstronomia, AIngles]
    ), 
    BecaAstronomia < BecaOra, 
    carrera_ora(CarreraOra),
    BecaFisica is 5000 + BecaCarrie,
    BecaErma is BecaCarrie + 10000,
    BecaTracy > BecaIngles
  .
    