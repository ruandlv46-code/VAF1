-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2025 a las 22:41:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vaf1`
--
CREATE DATABASE IF NOT EXISTS `vaf1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vaf1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cameos`
--

CREATE TABLE `cameos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `img1` varchar(20) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cameos`
--

INSERT INTO `cameos` (`id`, `nombre`, `img1`, `descripcion`) VALUES
(1, 'bart to the future', 'cameo1.jpg', 'En Los Simpsons hubo muchas referencias a volver al futuro, una de ellas es el nombre del capitulo en el que Bart ve el futuro con ayuda de una maquina. El capitulo se llama \"Bart to the future\" haciendo referencia al nombre de la película en ingles (Back to the future).'),
(2, 'Bill and Ted', 'cameo2.webp', 'En el show de Universal Bill and Ted\'s excelent halloween adventure, aparecen Doc. ofreciendo una vuelta a Bill y Ted.'),
(3, 'Lego Dimensions', 'cameo3.jpg', 'En el videojuego Lego Dimensions aparece Marty McFly en el anuncio del mismo y la voz del personaje en el juego está grabada por el actor del personaje, Michael J. Fox.'),
(4, 'Serie animada', 'cameo4.jpg', 'En la serie animada de los años 1991-1992 está una imagen de la familia del Doc. hecha con los actores de la vida real.'),
(5, 'A million ways to die in the west', 'cameo5.jpg', 'En A million ways to die in the west, el Doc. hace un cameo breve mientras trabaja en el DeLorean.'),
(6, 'American dad', 'cameo6.jpg', 'En American dad hay muchos capítulos donde se hacen referencias a volver al futuro, en este caso el capitulo \"DeLorean Story-an\" Stan intenta construir un DeLorean, además en un momento del capitulo hay.'),
(7, 'The Flash', 'cameo7.jpg', 'En la película The Flash, Cisco dice \"hang on, McFly\" y se compara con Doc. cuando Barry regresa del futuro.'),
(8, 'Doctor Who', 'cameo8.jpg', 'En Doctor Who, emplean ideas y estructuras similares al flujo temporal y letras entregadas que remiten a Volver al futuro.'),
(9, 'Family Guy', 'cameo9.jpg', 'Family guy tuvo muchos cameos y referencias a Volver al futuro, uno de estos cameos es cuando marty y doc discuten sobre el futuro, doc le dice que tienen que ir a salvar a las hijas de McFly.'),
(10, 'Supernatural', 'cameo10.jpg', 'En supernatural hay varias escenas que en las que referenciaron a Volver al futuro. Destacamos una en la que uno de los hermanos viajan al pasado y se pregunta si existe el DeLorean.'),
(11, 'stranger_things', 'cameo11.jpg', 'En una escena de Stranger Things aparece cartel promocional de la película de volver al futuro y también uno de los personajes está en el cine mirando la misma.'),
(12, 'gravity_falls', 'cameo12.jpg', 'En Gravity Falls los personajes hacen referencia a Volver al Futuro. Los nombres de los protagonistas (Mabel y Dipper Pines) Son un juego de palabras junto con Twin Pines (centro comercial del film), además la gorra del protagonista es muy parecida a la de Marty McFly.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `emails`
--

INSERT INTO `emails` (`id`, `email`) VALUES
(1, 'correo@correo.com'),
(2, 'correo@correo.com'),
(3, 'correo@correo.com'),
(4, 'correo@correo.com'),
(5, 'correo@correo.com'),
(6, 'correo@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `img1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre`, `descripcion`, `img1`) VALUES
(1, 'volver al futuro', 'Una máquina del tiempo transporta a un adolescente a los años 50, cuando sus padres todavía estudiaban en la secundaria.', 'pelicula1.jpg'),
(2, 'volver al futuro 2', 'Doc vuelve a aparecer con una máquina del tiempo mucho más modernizada y le pide a Marty y a su novia que le acompañen al futuro. En el Hill Valley de 2015 deberán solucionar un problema con la ley que tendrá uno de los futuros hijos de Marty y Jenny. En el futuro, Biff Tannen roba la máquina del tiempo y vuelve al pasado para darle a su hijo un libro con estadísticas deportivas para poder ganar una enorme fortuna en las apuestas. Marty y Doc tendrán que parar la posible catástrofe del destino.', 'pelicula2.jpg'),
(3, 'volver al futuro 3', 'Marty McFly sigue en 1955 y Doc ha retrocedido al año 1885, la época del salvaje oeste. Marty recibe una carta de Doc en la que le informa de que la máquina del tiempo está averiada y no puede volver al presente, pero que no le importa seguir en el pasado. Sin embargo, Marty descubre una tumba en la que lee que Doc murió en 1885 y decide ir a rescatar a su amigo.', 'pelicula3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `img1` varchar(20) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_de_nacim` varchar(11) NOT NULL,
  `edad` varchar(20) NOT NULL,
  `actor` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `img1`, `descripcion`, `fecha_de_nacim`, `edad`, `actor`) VALUES
(1, 'Marty McFly', 'mar.jpg', 'Martin Seamus \"Marty\" McFly es el protagonista principal de Regreso al futuro, con su yo de 1985 como protagonista principal de Regreso al futuro y Regreso al futuro Parte II, el deuteragonista de Regreso al futuro Parte III, el tritagonista de Regreso al futuro: la serie animada, y el protagonista general invisible de Regreso al futuro: el viaje. Es el segundo viajero en el tiempo del mundo (después Einstein), el primero en viajar al pasado y el primer humano en viajar en el tiempo. También fue estudiante de secundaria en Escuela secundaria Hill Valley en 1985. Era el mejor amigo del Dr. Emmet Brown. Mientras estaba en 1955, utilizó el alias Calvin Klein; y en 1885 utilizó el alias Clint Eastwood.', '09-12', '17', 'Michael J. Fox'),
(2, 'Dr. Emmett Lathrop \"Doc\" Brown', 'emm.jpg', 'Dr. Emmett Lathrop \"Doc\" Brown es residente de Valle de la colina, California. Fue el inventor de la Máquina del tiempo DeLorean. Es el tercer viajero en el tiempo del mundo (después de Einstein y Marty McFly), el segundo en viajar hacia adelante en el tiempo (después de Einstein) y el segundo humano en viajar a través del tiempo (después de Marty). Es el deuteragonista de Regreso al futuro, con su yo de 1985 como protagonista general de Regreso al futuro, el deuteragonista de Regreso al futuro Parte II, el protagonista principal de Regreso al futuro Parte III, Regreso al futuro: la serie animada, un personaje secundario en Regreso al futuro Parte II y un personaje secundario en Regreso al futuro Parte III.', '1920', '65', 'Christopher Lloyd'),
(3, 'Biff Tannen', 'bif.jpg', 'Biff Howard Tannen es el antagonista principal de la franquicia de Regreso al futuro, con su yo de 1955 sirviendo como el antagonista principal en Regreso al futuro y Regreso al futuro parte II, mientras que su yo de 1985 sirve como antagonista secundario en Regreso al futuro, un antagonista menor en Regreso al futuro parte II, y el antagonista general en Regreso al futuro parte III, su yo de 1985A sirve como el antagonista principal de Regreso al futuro parte II, y su yo de 2015 sirve como el antagonista general en Regreso al futuro parte II.', '03-29', '48', 'Thomas F. Wilson'),
(4, 'George McFly', 'geo.jpg', 'George Douglas McFly es uno de los dos protagonistas principales (junto a Lorraine Baines McFly) de la franquicia Volver al Futuro, siendo su versión de 1955 el deutagonista de Volver al Futuro y un personaje con un cameo en Volver al Futuro Parte II; su versión de 1985 es un personaje principal en Volver al Futuro, hace un cameo en Volver al Futuro Parte II, y aparece como personaje secundario en Volver al Futuro Parte III; su versión de 1985A es el protagonista principal póstumo de Volver al Futuro Parte II, y su versión de 2015 es un personaje secundario en Volver al Futuro Parte II.', '04-01', '47', 'Crispin Glover (Parte I), Jeffrey Weissman (Parte II/III)'),
(5, 'Lorraine Baines McFly', 'lor.jpg', 'Lorraine Baines McFly es madre de Dave, Linda y Marty McFly, y esposa de George McFly. A Lorraine le gustaba la atención de los chicos en la escuela, y muchos se sentían atraídos por ella, incluyendo a George McFly y a Biff Tannen. De joven, Lorraine no temía perseguir al chico que quería ni compartir coche con él. Lorraine sabía defenderse a sí misma y a sus seres queridos, como se vio al rechazar constantemente las insinuaciones agresivas de Biff y, en una ocasión desafiante, decirle: «No sería tu chica ni aunque tuvieras un millón de dólares». Sin embargo, a pesar de eso, le gustaba que sus hombres fueran fuertes y capaces de protegerla. Le gustaba recordar los viejos tiempos, contando a menudo cómo conoció y se enamoró de George. En el presente, a Lorraine le gustaba jugar al tenis con su marido y fueron campeones del club durante los últimos seis años (en 1985). Sus mejores amigas en la secundaria eran Betty y Babs, y a menudo se la encontraba en el Café de Lou cotilleando con ellas.', '1938', '47', 'Lea Thompson'),
(6, 'Jennifer Parker', 'jen.jpg', 'Jennifer Jane Parker McFly es la novia, y luego la esposa, de Marty McFly. Jennifer fue la cuarta viajera en el tiempo del mundo, la primera mujer y la tercera humana. Era hija de Danny Parker Jr. y Betty Parker, y nieta de Danny Parker y su esposa Betty Lapinski. Jennifer y Marty parecían ser lo bastante “serios” como para que él la presentara a su mejor amigo, el inventor local Dr. Emmett Brown, a quien ella al principio consideró excéntrico y extraño. Jennifer es, en general, una persona positiva, sabe qué decirle a Marty si necesita ánimo y se pregunta qué vida feliz podría tener en el futuro.', '10-29', '17', 'Claudia Wells (Parte I), Elisabeth Shue (Parte II/III)'),
(7, 'Douglas J Needles', 'dou.jpg', 'Douglas J. Needles (generalmente conocido simplemente como Needles) era un conocido de Marty McFly y su novia Jennifer Parker, aunque probablemente no era realmente amigo de ninguno de los dos. A diferencia de Biff Tannen, quien solía presionar a George, el padre de Marty, para conseguir lo que quería, Needles parecía más bien un rival personal para Marty. Era impulsivo, provocador y bastante temerario, capaz de incitarlo y manipularlo para que cometiera tonterías o tomara malas decisiones, especialmente cuando lo desafiaba llamándolo \"gallina\", sabiendo que esa palabra era el principal detonante emocional de Marty.', '08-06', '17', 'Michael Peter Balzary'),
(8, 'Buford \"Mad Dog\" Tannen', 'buf.jpg', 'Buford \"Mad Dog\" Tannen es el antagonista principal de la franquicia Regreso al Futuro, actuando como el villano principal invisible en Regreso al Futuro Parte II y como el antagonista principal en Regreso al Futuro Parte III. Fue un notorio forajido local en Hill Valley, California, durante el año 1885. Conocido por su temperamento explosivo y su rechazo a que lo llamaran “Mad Dog”, era hijo de Beauregard Tannen, abuelo paterno de Irving \"Kid\" Tannen y Frank Tannen, bisabuelo de Biff Tannen y tatarabuelo del problemático Griff Tannen del año 2015.', '1857', 'XXX', 'Thomas F. Wilson'),
(9, 'Einstein', 'ein.jpg', 'Einstein, conocido cariñosamente como \"Einie\", era el perro ovejero del Dr. Emmett Brown en 1985 y, más adelante, mascota de toda la familia Brown. Su edad exacta en ese año era desconocida, aunque estaba completamente desarrollado y probablemente tenía una edad media para un perro. Einstein fue el más reciente de varios perros del Doc que llevaban nombres de científicos famosos, y en su caso fue nombrado en honor a Albert Einstein. Por lo tanto, fue muy apropiado que él se convirtiera en el primer viajero en el tiempo del mundo, marcando un momento histórico en la ciencia ficticia.', '1980', 'Mediana Edad (Dog)', 'Tiger (Parte I), Freddie (Partes II/III)'),
(10, 'Dave McFly', 'dav.jpg', 'David Tiberius \"Dave\" McFly es el hijo mayor de George y Lorraine McFly. Nació en 1963 en Hill Valley, California, y es el hermano mayor de Linda y Marty McFly. Dave era un joven bastante tranquilo, con un sentido del humor simple, y solía reírse de sus propios chistes, aunque no siempre fueran graciosos. Mantuvo un vínculo cercano con su padre en casi todas las líneas temporales, y probablemente era el hermano McFly que mejor se llevaba con George. Le gustaba ver repeticiones de The Honeymooners con él, y no mostraba demasiado interés por los deportes o la actividad física.', '11-05', '21', 'Marc McClure'),
(11, 'Linda McFly', 'lin.jpg', 'Linda McFly es la hija del medio y la única hija de George y Lorraine McFly. Nació en 1966 en Hill Valley, California, siendo la hermana menor de Dave y mayor de Marty. Se graduó de la preparatoria Hill Valley en 1984 y solía mostrar interés por los chicos, aunque sus padres eran bastante estrictos al respecto.', '09-01', '19', 'Wendie Jo Sperber'),
(12, 'Goldie Wilson', 'gol.jpg', 'Goldie Wilson fue alcalde de Hill Valley en 1985 y ocupaba el cargo desde 1977. Sus anuncios de campaña para la reelección en 1985 prometían más empleos, mejor educación, mayores mejoras cívicas y una reducción de impuestos. El lema de sus anuncios impresos era: “Honestidad, Decencia e Integridad”. De joven trabajaba en el Café de Lou y tenía un característico diente de oro, aunque existe cierta controversia sobre si aún lo conservaba treinta años después, cuando se postulaba nuevamente para el cargo. Su ascenso político simbolizó el cambio y las oportunidades en Hill Valley.', '1933', '52', 'Donald Fullilove');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo`
--

CREATE TABLE `tiempo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `img1` varchar(20) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tiempo`
--

INSERT INTO `tiempo` (`id`, `nombre`, `img1`, `descripcion`) VALUES
(1, '1985', '1985.jpg', '1985'),
(2, '1985a', '1985a.jpg', '1985a'),
(3, '2015', '2015.jpg', '2015'),
(4, '1955', '1955.jpg', '1955'),
(5, '1885', '1885.jpg', '1885');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `img1` varchar(20) NOT NULL,
  `img2` varchar(20) NOT NULL,
  `img3` varchar(20) NOT NULL,
  `img4` varchar(20) NOT NULL,
  `img5` varchar(20) NOT NULL,
  `img6` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `nombre`, `descripcion`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`) VALUES
(1, 'Aerotabla ', 'La aerotabla (o \"hoverboard\") es un invento de la película Volver al Futuro II, estrenada en 1989. En la película, el personaje Marty McFly utiliza una aerotabla que flota sin ruedas. Aunque el concepto se popularizó con el film, la tecnología real de las aerotablas que existen en la actualidad se comenzó a desarrollar y comercializar mucho después, a partir de 2011. ', 'aero1c.jpg', 'aero1.jpg', 'aero2.jpg', 'aero3.jpg', 'aero4.jpg', 'aero5.jpg'),
(2, 'BMW733i', 'La familia McFly tenia un BMW 733i en 1985. Este, conducido por George McFly , era el coche principal de la familia. Su matrícula era 3A709T8.ntes de que Marty McFly regresara a 1955. Antes de que Marty McFly regresara a 1955.\r\nEl BMW también aparece al final de Regreso al futuro III después de que Marty regresa de 1885.', 'bmw1c.jpg', 'bmw1.jpg', 'bmw2.jpg', 'bmw3.jpg', 'bmw4.jpg', 'bmw5.jpg'),
(3, 'Chevrolet nova', 'En la primera línea temporal, George McFly conducía un Chevrolet Nova de 1979 en 1985.\r\nEl Chevrolet Nova es el auto antiguo de George McFly que termina destruido, mientras que el BMW 733i es el coche de éxito que posee después de que Marty altera el futuro, y el DeLorean es la famosa máquina del tiempo. ', 'chev1c.jpg', 'chev1.jpg', 'chev2.jpg', 'chev3.jpg', 'chev4.jpg', 'chev5.jpg'),
(4, 'De Lorean DMC-12', 'La máquina del tiempo DeLorean fue el invento más exitoso del Dr.Emmett Brown, una máquina del tiempo impulsada por plutonio construida sobre un automóvil deportivo DeLorean DMC-12 que tenía que alcanzar 88 millas por hora.', 'delo1c.jpg', 'delo1.jpg', 'delo2.jpg', 'delo3.jpg', 'delo4.jpg', 'delo5.jpg'),
(5, 'Ford Super De Luxe', 'El Super De Luxe fue un modelo de vehículo fabricado por Ford durante la década de 1940. Biff Tannen poseía un modelo de 1946 en 1955 que era un convertible, pintado de negro con un interior rojo.', 'ford1c.jpg', 'ford1.jpg', 'ford2.jpg', 'ford3.jpg', 'ford4.jpg', 'ford5.jpg'),
(6, 'GMC Value Van', 'En 1985 , la utilizó para transportar la máquina del tiempo DeLorean y el plutonio necesario para la primera prueba del vehículo en el centro comercial Twin Pines.', 'gmc1c.jpg', 'gmc1.jpg', 'gmc2.jpg', 'gmc3.jpg', 'gmc4.jpg', 'gmc5.jpg'),
(8, 'Jules Verne Maquina del tiempo', 'entre dos obras diferentes; la novela \"La máquina del tiempo\" de H.G. Wells se publicó en 1895, mientras que la película \"Volver al Futuro\" (donde sí aparece una máquina del tiempo) se lanzó en 1985, seguido por sus secuelas en 1989 y 1990. ', 'jule1c.jpg', 'jule1.jpg', 'jule2.jpg', 'jule3.jpg', 'jule4.jpg', 'jule5.jpg'),
(10, 'Locomotora 131', 'La locomotora #131 en Volver al Futuro III en realidad es la Sierra Railway #3, también conocida como \"La Locomotora Estrella del Cine\". Este famoso tren de vapor, construido en 1891 y con más de 170 películas en su haber, fue utilizado para la icónica escena final donde empuja el DeLorean para alcanzar las 88 millas por hora y viajar en el tiempo. ', 'loco1c.jpg', 'loco1.webp', 'loco2.jpg', 'loco3.jpg', 'loco4.jpg', 'loco5.jpg'),
(12, 'Toyota Hilux', 'Modelo: Toyota Hilux SR5 4x4 Xtra Cab.\r\nAño: 1985.\r\nLa camioneta representa el sueño de Marty McFly.', 'toyo1c.jpg', 'toyo1.jpg', 'toyo2.jpg', 'toyo3.jpg', 'toyo4.jpg', 'toyo5.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cameos`
--
ALTER TABLE `cameos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cameos`
--
ALTER TABLE `cameos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
