# repositorioISPC
Repositorio creado para el ISPC - Trabajo grupal
# HISTORIA Y EVOLUCION DE LAS BASES DE DATOS #
* En 1884 Hernan Holtherin creó una maquina tabuladora basada en tarjetas perforadas con el objetivo de tomar registro de censos. Así fue nombrado como el primer ingeniero estadistico de la historia.
* Años 50': se da origen a las cintas magneticas para automatizar informacion y hacer respaldos con desventaja de que solo se podia tener acceso a esta informacion de manera secuencial. Procesamiento centralizado. Nacimiento de data banks que posteriormente se llamaron data bases. La informacion de estas cintas se guardaba por lotes de BATCH. Procesamiento monosaurio y monotarea.
* Años 60': se populariza la utilizacion de discos rigidos como dispositivos de almacenamiento. Inveción del transistor. Nacimiento de circuitos integrados (microcontroladores). Gracias a estos discos se podía consultar la información directamente sin necesidad de saber la ubicacion exacta de los datos. Se da inicion a las primeras bases de datos jerárquicas y de red. Alianza de IMB y American Airlines para desarrollar SABRE sistema operativo que manejaba las reservas de los vuelos y transacciones e informacion de pasajeros de American Airlines. Desarrollo de IDS (Integrated data store) por Charles Bachman supuso la creacion de un nuevo sistema de bases de datos conocido como modelo de red que permitió la creación de un estandar en los SBD gracias a la creación de nuevos lenguajes de sistemas de información.
* Años 70': creación del modelo relacional entidad-relación por Edward Codd. Desarrollo de mainframes. Desarrollo de los primeros OLTP (apps online transaccionales). Creación de la empresa Relational Software system por parte de Lawrence J. Ellison empresa que mas adelante se conoció como Oracle Corporation. Apartir de este hecho IBM crea System R como competencia. Ingres utilizaba un lenguaje de consulta llamado QUEL dando pie a la creación de sistemas como INGRES corporation, MS SQL Server, Sy base, PACE wang y Briton Lee.
* Años 80': se desarrollo el SQL (Structured Query Lenguage) un lenguaje de consulta que permite consultar con el fin de recuperar informacion de una base de datos y a su vez realizar cambios sobre esa misma base de forma sencilla. Desarrollo de las primeras PC y nuevas alternativas de BD monousuarios para PC (dBase, Access). Desarrollo de microprocesadores mas potentes. A finales de esta decada la empresa Microsoft lanza su SGBD llamado MS SQL Server.
* Años 90': creación de la primera red de redes tipo "Wan" llamada Internet. Desarrollo de los primeros SGBD distrubuidos. Aparece la Tecnología de la arquitectura cliente-servidor. Nace un nuevo proyecto de SGBD libre (código abierto) de tipo GLP (licencia pública general) llamado MYSQL y como proyecto derivado nace MariaDB. El éxito de las BD en sistemas personales llevó a la aparición de los Fourth generation Lenguages (4GL). Nace el SGBD PostgreSQL derivado del proyecto Ingres y los SGBD orientados a objetos.
* Años 00' a la actualidad: a partir de la creación de Internet los SGBD toman nuevas configuraciones de acuerdo al tipo de prestación. Surgen nuevos paradigmas de como resguardar la información. Se hacen presentes conceptos como Bigdata y SGBD NO SQL. Aparecen SGBD donde sus servicios pueden ser accedidos desde la nube como el proyecto de Firebird. Empresas denominadas BigTech se hacen del control de manejo de grandes cantidades de volúmen de información, se crean servicios en la nube para el resguardo completo de la información de un sistema de información (AWS de Amazón, Azure de Microsoft, GCP de Google). 
# SISTEMAS GESTORES DE BASES DE DATOS #
Es un tipo de Software muy específico o una agrupación de programas que sirven para definir, construir y manipular una base de datos, permitiendo así almacenar y posteriormente acceder a los datos de forma rápida y estructurada. 
El objetivo primordial de un gestor es proporcionar eficiencia y seguridad a la hora de extraer o almacenar informacion de una base de datos. Estos sistemas estan diseñados para gestionar grandes bloques de información. En estos tipos de sistemas los datos se centralizan en una base de datos común a todas las aplicaciones.
Una base de datos es un gran almacen de datos que se define una sola vez, los datos pueden ser accedidos simultaneamente por varios usuarios a la vez, están relacionados y existe un numero mínimo de duplicidad, además en la base de datos se almacenan les descripciones de estos datos llamados metadatos en el diccionario de datos.
# NIVELES DE ABTRACCION DE UNA BASE DE DATOS #
En 1975 el comité ANSI-SPARC propusouna arquitectura de 3 niveles para los SGBD cuyo objetivo principal era el de separar los programas de aplicación de la BD física. Estos tres niveles son:
* Nivel inerno o físico: Es el mas cercano al almacenamiento físocp, es decir, tal y como estan almacenados en el ordenador. Describe la estructura física de la BD mediante un esquema interno.
* Nivel externo o de visión: es el mas cercano a los usuarios, es decir, en donde se describen varios esquemas externos o vistas de usuario. Cada exquema describe la parte de la BD que interesa a un grupo de usuarios, esta vision es la que se obtiene a traves de las apps.
* Nivel conceptual: Describe la estructura de toda la BD para un grupo de usuarios mediante un esquema conceptual, este esquema, describe las entidades, atributos, relaciones, operaciones de los usuarios y restricciones ocultando los detalles de las estructuras físicas de almacenamiento. 
# LENGUAJES DE LOS SGBD #
Lenguaje de definición de datos (DDL): se utiliza para especifical el esquema de la BD, las vistas de los usuarios y las estructuras de almacenamiento. Es el que define el esquema conceptual e interno. La función de definición sirve entonces para crear, eliminar o modificar datos.
Lenguaje de manipulación de datos (DML): se utiliza para leer y actualizar los datos de la BD, es el utilizado por los usuarios para realizar consultas, inserciones, eliminaciones y modificaciones.
Actualmente se suele distinguir la función de buscar datos en la BD (función de consulta) para lo cual se proporciona un lenguaje de consulta de datos (DCL).
# ESTRUCTURA MULTICAPA #
+ Facilidades de usuario
+ Acceso a datos
+ Diccionario de datos
+ Núcleo
+ Sistema Operativo
+ Datos
# FUNCIONAMIENTO DEL SGBD #
Los únicos datos que existen están a nivel físico almacenados en discos u otros dispositivos. El SGBD debe transformar cualquier petición de usuario (esquema externo) a una petición expresada en términos de esquema conceptual para finalmente ser una petición expresada en el esquema interno que se procesará sobre la BD almacenada. Este proceso de transformar peticiones y resultados de un nivel al otro se denomina correspondencia o transformación.
Se realizan los siguientes pasos:
1- El usuario solicita unos datos y crea una consulta.
2- La aplicación del usuario convierte esta consulta en un proceso realizado por el cliente del SGBD.
3- La consulta viaja a traves de un medio (RED).
4- El SGBD verifica y acepta el esquema externo para ese usario. Se convierte el proceso del usuario en un proceso de servidor interno.
5- Transforma la solicitud al esquema conceptual.
6- Verifica y acepta el esquema conceptual.
7- El proceso lanzado por el usuario llama al SGBD indicando la porción de la BD que se desea tratar.
8- Transforma la solicitud al esquema físico o interno.
9- El SGBD traduce la llamada a los métodos de acceso del S.O. que permite acceder realmente a los datos requeridos.
10- selecciona la o las tablas implicadas en la consulta y la ejecuta. El S.O. accede a los datos tras traducir las ordenes dadas por el SGBD.
11- Transforma del esquema interno al conceptual y del conceptual al externo. Los datos pasan del disco a una memoria intermedia o buffer.
12- Los datos pasan del buffer al area de trabajo del usuario (ATU). Los pasos se repiten hasta que se envie toda la información al proceso de usuario.
13- Si existen errores durante el proceso el SGBD devuelve indicadores en los que manifiesta si ha habido errores o advertencias a tenes en cuenta. Esto se indica al area de comunicaciones del proceso de usuario. Si las indicaciones son satisfactorias los datos de la ATU serán utilizables por el proceso de usuario.
14- Finalmente, el usuario velos datos solicitados.
Para una base de datos específica solo hay un esquema interno y uno conceptual, pero puede haber varios esquemas externos definidos para uno o varios usuarios.
# DISEÑOS DE BASES DE DATOS RELACIONALES #
