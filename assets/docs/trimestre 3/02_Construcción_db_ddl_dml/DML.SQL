
--
-- Volcado de datos para la tabla `recordatorio`
--

INSERT INTO `recordatorio` (`recordatorio_id`, `recordatorio_texto`, `recordatorio_fecha`, `recordatorio_fecha_fin`, `usuario_identificacion`) VALUES
(1, 'Produccion de multimedia', '2024-07-02 00:00:00', '2024-07-02 00:00:00', 1),
(3, 'Programación', '2024-07-01 00:00:00', NULL, 1),
(3, 'Mantenimiento de computadores', '2024-07-06 00:00:00', '2024-07-07 00:00:00', 1),
(4, 'Sistemas', '2024-07-04 00:00:00', '2024-07-05 00:00:00', 1),
(5, 'Electronica', '2024-07-03 00:00:00', '2024-07-04 00:00:00', 1);

-- --------------------------------------------------------

-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_code`, `rol_nombre`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_identificacion`, `usuario_nombre`, `usuario_apellido`, `usuario_email`, `usuario_clave`, `rol_code`) VALUES
(1, 'juan', 'ortiz', 'juan@gmail.com', 'aaa', 45),
(123456789, 'juan', 'ortiz', 'juan@gmail.com', 'aaa', 45);

-- --------------------------------------------------------
