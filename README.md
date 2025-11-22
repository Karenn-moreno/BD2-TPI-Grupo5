
🎬 AppCine - Sistema de Gestión de Salas de Cine

Este proyecto consiste en el desarrollo de una Base de Datos Relacional para la gestión interna, programación y administración de ventas de un complejo de salas de cine.

📚 Contexto Académico

Este sistema fue desarrollado en el marco de la materia Base de Datos 2 (Año 2025) de la Tecnicatura Universitaria en Programación - UTN FRGP.

👥 Integrantes del equipo

Borsani, Manuel 

Buteler, Tomás

Moreno, Karen

🧩 Descripción del Sistema
La aplicación está enfocada en la administración eficiente del complejo, permitiendo a los usuarios (empleados/administradores):

Gestionar Funciones: Visualizar la cartelera futura y reprogramar proyecciones con validaciones de integridad (horarios y salas).

Control de Ventas: Registrar entradas asignando butacas específicas y calculando montos automáticamente.

Reportes: Acceder a información rápida sobre entradas vendidas por día, por función o por película.

Visualización de Estrenos: Filtrar películas estrenadas recientemente o próximas a estrenar.

La base de datos respalda la lógica del sistema, gestionando 9 tablas principales que incluyen entidades como:

Usuario

Película

Sala y Tipo de Sala

Funcion

Venta y Entrada

Asiento y Tipo de Asiento

⚙️ Componentes Técnicos
🔄 Triggers
TR_AsientoSala: Garantiza la integridad física, impidiendo vender una entrada para un asiento que no pertenece a la sala donde se proyecta la función.

TR_SolapamientoFunciones: Evita que se programen funciones superpuestas en la misma sala, respetando la duración de la película y un tiempo de "búfer" (20 min).

TR_ActualizarMontoVenta: Mantiene la consistencia monetaria, recalculando automáticamente el total de la tabla Venta cada vez que se agregan o eliminan entradas.

⚙️ Procedimientos almacenados
sp_EntradasPorDia: Reporte que informa la cantidad de ventas para una función específica en una fecha determinada.

sp_EntradasPorFuncion: Reporte global de ventas acumuladas para una función específica.

sp_EntradasPorPelícula: Reporte que agrupa las ventas totales por película, incluyendo detalles técnicos (duración, género).

sp_ReprogramarFuncion: Proceso transaccional crítico que permite cambiar fecha y sala de una función, validando que no existan entradas vendidas (si cambia la sala) y que no haya conflictos horarios.

sp_VenderEntrada: Registra la venta verificando la existencia de la función, la disponibilidad del asiento y la vigencia de la venta.

👁️‍🗨️ Vistas
vista_FuncionesDisponibles: Lista proyecciones futuras en salas activas, detallando precios y clasificación.

vista_UltimosEstrenos: Filtra funciones de películas estrenadas en los últimos 7 días.

vista_EstrenosProximos: Filtra funciones de películas a estrenarse en los próximos 7 días.

vista_ClientesConEntradas: Reporte detallado de clientes con tickets activos para funciones futuras, útil para control de acceso.

📝 Recomendaciones para el funcionamiento de la Base de Datos SQL y la aplicación en ASP.NET

La aplicación "APPNUEVA" diseñada para conectarse a la base de datos del grupo (BD2_TPI_G05). La misma debe ser creada ejecutando el script de estructura, insertar sus datos iniciales (tipos de sala, asientos, usuarios base) y crear los objetos programables (SPs, Triggers, Vistas) detallados anteriormente para el correcto funcionamiento de la app ASP.NET.

Cuenta con usuarios predefinidos en la nómina para realizar las pruebas de gestión de ventas y programación. Nota importante: Al probar las funcionalidades de "Próximos Estrenos" o validación de fechas, revisar que los datos insertados sean coherentes con la fecha actual del servidor SQL (GETDATE()).
