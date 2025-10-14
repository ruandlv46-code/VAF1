-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 11 oct. 2025 à 00:37
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vaf1`
--
CREATE DATABASE IF NOT EXISTS `vaf1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vaf1`;

-- --------------------------------------------------------

--
-- Structure de la table `cameos`
--

CREATE TABLE `cameos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `img` varchar(20) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cameos`
--

INSERT INTO `cameos` (`id`, `nombre`, `img`, `descripcion`) VALUES
(1, 'bart to the future', 'cameo1.jpg', 'En Los Simpsons hubo muchas referencias a volver al futuro, una de ellas es el nombre del capitulo en el que Bart ve el futuro con ayuda de una maquina. El capitulo se llama \"Bart to the future\" haciendo referencia al nombre de la película en ingles (Back to the future).'),
(2, 'Bill and Ted', 'cameo2.webp', 'En el show de Universal Bill and Ted\'s excelent halloween adventure, aparecen Doc. ofreciendo una vuelta a Bill y Ted.'),
(3, 'Lego Dimensions', 'cameo3.jpg', 'En el videojuego Lego Dimensions aparece Marty McFly en el anuncio del mismo y la voz del personaje en el juego está grabada por el actor del personaje, Michael J. Fox.'),
(4, 'Serie animada', 'cameo4.jpg', 'En la serie animada de los años 1991-1992 está una imagen de la familia del Doc. hecha con los actores de la vida real.'),
(5, 'A million ways to die in the west', 'cameo5.jpg', 'En A million ways to die in the west, el Doc. hace un cameo breve mientras trabaja en el DeLorean.'),
(6, 'American dad', 'cameo6.webp', 'En American dad hay muchos capítulos donde se hacen referencias a volver al futuro, en este caso el capitulo \"DeLorean Story-an\" Stan intenta construir un DeLorean, además en un momento del capitulo hay.'),
(7, 'The Flash', 'cameo7.webp', 'En la película The Flash, Cisco dice \"hang on, McFly\" y se compara con Doc. cuando Barry regresa del futuro.'),
(8, 'Doctor Who', 'cameo8.jpg', 'En Doctor Who, emplean ideas y estructuras similares al flujo temporal y letras entregadas que remiten a Volver al futuro.'),
(9, 'Family Guy', 'cameo9.jpg', 'Family guy tuvo muchos cameos y referencias a Volver al futuro, uno de estos cameos es cuando marty y doc discuten sobre el futuro, doc le dice que tienen que ir a salvar a las hijas de McFly.'),
(10, 'Supernatural', 'cameo10.webp', 'En supernatural hay varias escenas que en las que referenciaron a Volver al futuro. Destacamos una en la que uno de los hermanos viajan al pasado y se pregunta si existe el DeLorean.'),
(11, 'stranger_things', 'cameo11.avif', 'En una escena de Stranger Things aparece cartel promocional de la película de volver al futuro y también uno de los personajes está en el cine mirando la misma.'),
(12, 'gravity_falls', 'cameo12.avif', 'En Gravity Falls los personajes hacen referencia a Volver al Futuro. Los nombres de los protagonistas (Mabel y Dipper Pines) Son un juego de palabras junto con Twin Pines (centro comercial del film), además la gorra del protagonista es muy parecida a la de Marty McFly.');

-- --------------------------------------------------------

--
-- Structure de la table `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre`, `descripcion`, `img`) VALUES
(1, 'volver al futuro', 'Una máquina del tiempo transporta a un adolescente a los años 50, cuando sus padres todavía estudiaban en la secundaria.', 'pelicula1.jpg'),
(2, 'volver al futuro 2', 'Doc vuelve a aparecer con una máquina del tiempo mucho más modernizada y le pide a Marty y a su novia que le acompañen al futuro. En el Hill Valley de 2015 deberán solucionar un problema con la ley que tendrá uno de los futuros hijos de Marty y Jenny. En el futuro, Biff Tannen roba la máquina del tiempo y vuelve al pasado para darle a su hijo un libro con estadísticas deportivas para poder ganar una enorme fortuna en las apuestas. Marty y Doc tendrán que parar la posible catástrofe del destino.', 'pelicula2.jpg'),
(3, 'volver al futuro 3', 'Marty McFly sigue en 1955 y Doc ha retrocedido al año 1885, la época del salvaje oeste. Marty recibe una carta de Doc en la que le informa de que la máquina del tiempo está averiada y no puede volver al presente, pero que no le importa seguir en el pasado. Sin embargo, Marty descubre una tumba en la que lee que Doc murió en 1885 y decide ir a rescatar a su amigo.', 'pelicula3.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `img1` varchar(20) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_de_nacim` varchar(11) NOT NULL,
  `edad` varchar(20) NOT NULL,
  `actor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `img1`, `descripcion`, `fecha_de_nacim`, `edad`, `actor`) VALUES
(1, 'Marty McFly', 'mar.jpg', 'Martin Seamus \"Marty\" McFly es el protagonista principal de Regreso al futuro, con su yo de 1985 como protagonista principal de Regreso al futuro y Regreso al futuro Parte II, el deuteragonista de Regreso al futuro Parte III, el tritagonista de Regreso al futuro: la serie animada, y el protagonista general invisible de Regreso al futuro: el viaje. Es el segundo viajero en el tiempo del mundo (después Einstein), el primero en viajar al pasado y el primer humano en viajar en el tiempo. También fue estudiante de secundaria en Escuela secundaria Hill Valley en 1985. Era el mejor amigo del Dr. Emmet Brown. Mientras estaba en 1955, utilizó el alias Calvin Klein; y en 1885 utilizó el alias Clint Eastwood.', '1968-09-12', '17', 'Michael J. Fox'),
(2, 'Dr. Emmett Lathrop \"Doc\" Brown', 'emm.jpg', 'Dr. Emmett Lathrop \"Doc\" Brown es residente de Valle de la colina, California. Fue el inventor de la Máquina del tiempo DeLorean. Es el tercer viajero en el tiempo del mundo (después de Einstein y Marty McFly), el segundo en viajar hacia adelante en el tiempo (después de Einstein) y el segundo humano en viajar a través del tiempo (después de Marty). Es el deuteragonista de Regreso al futuro, con su yo de 1985 como protagonista general de Regreso al futuro, el deuteragonista de Regreso al futuro Parte II, el protagonista principal de Regreso al futuro Parte III, Regreso al futuro: la serie animada, un personaje secundario en Regreso al futuro Parte II y un personaje secundario en Regreso al futuro Parte III.', '1920', '65', 'Christopher Lloyd'),
(3, 'Biff Tannen', 'bif.jpg', 'Biff Howard Tannen es el antagonista principal de la franquicia de Regreso al futuro, con su yo de 1955 sirviendo como el antagonista principal en Regreso al futuro y Regreso al futuro parte II, mientras que su yo de 1985 sirve como antagonista secundario en Regreso al futuro, un antagonista menor en Regreso al futuro parte II, y el antagonista general en Regreso al futuro parte III, su yo de 1985A sirve como el antagonista principal de Regreso al futuro parte II, y su yo de 2015 sirve como el antagonista general en Regreso al futuro parte II.', 'March 26, 1', '48', 'Thomas F. Wilson'),
(4, 'George McFly', 'geo.jpg', 'George Douglas McFly is one of the two overarching protagonists (alongside Lorraine Baines McFly) of the Back to the Future franchise, with his 1955 self as the deuteragonist of Back to the Future and a cameo character in Back to the Future Part II, his 1985 self as a major character in Back to the Future, a cameo character in Back to the Future Part II, and a minor character in Back to the Future Part III, his 1985A self as the posthumous overarching protagonist of Back to the Future Part II, and his 2015 self as a minor character in Back to the Future Part II.', '1 abril 193', '47', 'Crispin Glover (Part 1), Jeffrey Weissman (Parts 2'),
(5, 'Lorraine Baines McFly', 'lor.jpg', 'Es madre de Dave, Linda y Marty McFly, y esposa de George McFly. A Lorraine le gustaba la atención de los chicos en la escuela, y muchos se sentían atraídos por ella, incluyendo a George McFly y a Biff Tannen. De joven, Lorraine no temía perseguir al chico que quería y compartir coche con ellos. Lorraine sabía defenderse a sí misma y a sus seres queridos, como se vio al rechazar constantemente las insinuaciones agresivas de Biff y, en una ocasión, desafiante, decirle: «No sería tu chica ni aunque tuvieras un millón de dólares». Sin embargo, a pesar de eso, le gustaba que sus hombres fueran fuertes y capaces de protegerla. Le gustaba recordar los viejos tiempos, contando a menudo cómo conoció y se enamoró de George. En el presente, a Lorraine le gustaba jugar al tenis con su marido y fueron campeones del club de tenis durante los últimos seis años (en 1985). Las mejores amigas de Lorraine en la escuela secundaria eran Betty y Babs, y a menudo se la encontraba en el Café de Lou cotilleando con ellas.', '1938', '47', 'Lea Thompson'),
(6, 'Jennifer Parker', 'jen.jpg', 'Jennifer Jane Parker McFly is the girlfriend, and later the wife, of Marty McFly. Jennifer was the world\'s fourth time traveler, the first female one and the third human one. She was the daughter of Danny Parker Jr. and Betty Parker, and the granddaughter of Danny Parker and his wife Betty Lapinski. Jennifer and Marty seemed to be \"serious\" enough for him to introduce her to his best friend, local inventor Dr. Emmett Brown, whom she first regarded as eccentric and strange. Jennifer is mostly a positive person, knowing what to say to Marty if he needed cheering up, and wondering what happy life she might have in the future.', 'October 29,', '17', 'Claudia Wells (Part I), Elisabeth Shue (Parts II/I'),
(7, 'Douglas J Needles', 'dou.webp', 'Douglas J. Needles (generalmente conocido simplemente como Needles) era conocido de Marty McFly y su novia Jennifer Parker, aunque probablemente no era amigo suyo. A diferencia de Biff Tannen, quien solía presionar a George, el padre de Marty, para que consiguiera lo que quería, Needles parecía más bien un rival para Marty, capaz de incitarlo y manipularlo para que cometiera tonterías llamándolo \"gallina\".', 'August 6, 1', '17', 'Michael Peter Balzary'),
(8, 'Buford \"Mad Dog\" Tannen', 'buf.webp', 'Buford \"Mad Dog\" Tannen es el antagonista principal de la franquicia de Regreso al Futuro, actuando como el antagonista principal invisible en Regreso al Futuro Parte II y el antagonista principal en Regreso al Futuro Parte III. Fue un forajido local en Hill Valley, California, en el año 1885. Era hijo de Beauregard Tannen, abuelo paterno de Irving \"Kid\" Tannen y Frank Tannen, bisabuelo de Biff Tannen y tatarabuelo de Griff Tannen.[1]', '1857', 'XXX', 'Thomas F. Wilson'),
(9, 'Einstein', 'ein.jpg', 'Einstein, often known as \"Einie\", was Dr. Emmett Brown\'s pet sheepdog in 1985, and later pet to the Brown family. His age in 1985 was unknown, although he was fully grown and most likely \"middle aged\" for a dog. He was the latest of many Doc\'s pet dogs named after famous scientists, in this case Albert Einstein. It was, therefore, quite fitting that he became the world\'s first time traveler.', '1980s', 'Middle aged (Dog)', 'Tiger (Part I), Freddie (Parts II and III)'),
(10, 'Dave McFly', 'dav.jpg', 'David Tiberius \"Dave\" McFly es el hijo mayor de George y Lorraine McFly. Nació en 1963 en Hill Valley, California, y es el hermano mayor de Linda y Marty McFly. Dave era bastante tranquilo y le gustaba reírse de sus propios chistes. Mantuvo un vínculo estrecho con su padre en casi todas las historias, y probablemente era el hermano McFly que mejor se llevaba con George. A Dave le gustaba ver repeticiones de \"The Honeymooners\" con su padre y no tenía mucho interés en los deportes.', 'November 5,', '21', 'Marc McClure'),
(11, 'Linda McFly', 'lin.jpg', 'Linda McFly es la hija mediana y única hija de George y Lorraine McFly. Nació en 1966 en Hill Valley, California, y es la hermana menor de Dave y la hermana mayor de Marty. Se graduó de la preparatoria Hill Valley en 1984.', 'September 1', '19', 'Wendie Jo Sperber'),
(12, 'Goldie Wilson', 'gol.jpg', 'Goldie Wilson fue alcalde de Hill Valley en 1985 y lo había sido desde 1977.[1] Sus anuncios de campaña de reelección de 1985 prometían más empleos, mejor educación, mayores mejoras cívicas y menores impuestos. El lema de sus anuncios impresos era Honestidad, Decencia e Integridad. De joven, tenía un diente de oro, aunque existe controversia sobre si aún lo tenía treinta años después, cuando se postulaba a la reelección.', '1933', '52', 'Donald Fullilove');

-- --------------------------------------------------------

--
-- Structure de la table `tiempo`
--

CREATE TABLE `tiempo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiempo`
--

INSERT INTO `tiempo` (`id`, `nombre`, `img`) VALUES
(1, '1985', '1985.jpg'),
(2, '1985a', '1985.webp'),
(3, '2015', '2015.webp'),
(4, '1955', '1955.webp'),
(5, '1885', '1885.webp');

-- --------------------------------------------------------

--
-- Structure de la table `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `img1` varchar(20) NOT NULL,
  `img2` varchar(20) NOT NULL,
  `img3` varchar(20) NOT NULL,
  `img4` varchar(20) NOT NULL,
  `img5` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `nombre`, `descripcion`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'Aerotabla ', 'La aerotabla (o \"hoverboard\") es un invento de la película Volver al Futuro II, estrenada en 1989. En la película, el personaje Marty McFly utiliza una aerotabla que flota sin ruedas. Aunque el concepto se popularizó con el film, la tecnología real de las aerotablas que existen en la actualidad se comenzó a desarrollar y comercializar mucho después, a partir de 2011. ', 'aero1.jpg', 'aero2.webp', 'aero3.jpeg', 'aero4.jpg', 'aeo5.jpg'),
(2, 'BMW733i', 'La familia McFly tenia un BMW 733i en 1985. Este, conducido por George McFly , era el coche principal de la familia. Su matrícula era 3A709T8.ntes de que Marty McFly regresara a 1955. Antes de que Marty McFly regresara a 1955.\r\nEl BMW también aparece al final de Regreso al futuro III después de que Marty regresa de 1885.', 'bmw1.jpg', 'bmw2.jpg', 'bmw3.jpg', 'bmw4.jpg', 'bmw.5jpg'),
(3, 'Chevrolet nova', 'En la primera línea temporal, George McFly conducía un Chevrolet Nova de 1979 en 1985.\r\nEl Chevrolet Nova es el auto antiguo de George McFly que termina destruido, mientras que el BMW 733i es el coche de éxito que posee después de que Marty altera el futuro, y el DeLorean es la famosa máquina del tiempo. ', 'chev1.webp', 'chev2.jpg', 'chev2.jpg', 'chev2.jpg', 'chev2.jpg'),
(4, 'De Lorean DMC-12', 'La máquina del tiempo DeLorean fue el invento más exitoso del Dr.Emmett Brown, una máquina del tiempo impulsada por plutonio construida sobre un automóvil deportivo DeLorean DMC-12 que tenía que alcanzar 88 millas por hora.', 'delo1.jpg', 'delo2.webp', 'delo3.jpg', 'delo4.jpg', 'delo5.jpg'),
(5, 'Ford Super De Luxe', 'El Super De Luxe fue un modelo de vehículo fabricado por Ford durante la década de 1940. Biff Tannen poseía un modelo de 1946 en 1955 que era un convertible, pintado de negro con un interior rojo.', 'ford1.jpg', 'ford2.jpg', 'ford3.webp', 'ford4.jpg', 'ford5.jpg'),
(6, 'GMC Value Van', 'En 1985 , la utilizó para transportar la máquina del tiempo DeLorean y el plutonio necesario para la primera prueba del vehículo en el centro comercial Twin Pines.', 'gmc1.ebp', 'gmc2.jpg', 'gmc3.jpeg', 'gmc4.jpg', 'gmc5.jpg'),
(8, 'Jules Verne Maquina del tiempo', 'entre dos obras diferentes; la novela \"La máquina del tiempo\" de H.G. Wells se publicó en 1895, mientras que la película \"Volver al Futuro\" (donde sí aparece una máquina del tiempo) se lanzó en 1985, seguido por sus secuelas en 1989 y 1990. ', 'jule1.jpg', 'jule2.jpg', 'jule3.webp', 'jule4.webp', 'jule5.wep'),
(10, 'Locomotora 131', 'La locomotora #131 en Volver al Futuro III en realidad es la Sierra Railway #3, también conocida como \"La Locomotora Estrella del Cine\". Este famoso tren de vapor, construido en 1891 y con más de 170 películas en su haber, fue utilizado para la icónica escena final donde empuja el DeLorean para alcanzar las 88 millas por hora y viajar en el tiempo. ', 'loco1.webp', 'loco2.webp', 'loco3.webp', 'loco4.webp', 'loco5.webp'),
(12, 'Toyota Hilux', 'Modelo: Toyota Hilux SR5 4x4 Xtra Cab.\r\nAño: 1985.\r\nLa camioneta representa el sueño de Marty McFly.', 'toyo1.wep', 'toyo2.jpg', 'toyo3.jpg', 'toyo4.jpg', 'toyo5.jeg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cameos`
--
ALTER TABLE `cameos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tiempo`
--
ALTER TABLE `tiempo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cameos`
--
ALTER TABLE `cameos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `tiempo`
--
ALTER TABLE `tiempo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
