--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `asistencia_id` int(11) NOT NULL,
  `usuario_identificacion` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_identificacion` int(11) NOT NULL,
  `usuario_nombre` varchar(100) NOT NULL,
  `usuario_apellido` varchar(100) NOT NULL,
  `usuario_email` varchar(100) NOT NULL,
  `usuario_clave` varchar(200) NOT NULL,
  `rol_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Estructura de tabla para la tabla `usuario_clase`
--

CREATE TABLE `usuario_clase` (
  `userclass_id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `usuario_identificacion` int(11) NOT NULL,
  `generated_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`asistencia_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_identificacion`),
  ADD KEY `rol_code` (`rol_code`);

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `asistencia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- Restricciones para tablas volcadas
--


--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol_code`) REFERENCES `roles` (`rol_code`);

