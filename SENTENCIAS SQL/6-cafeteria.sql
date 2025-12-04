CREATE TABLE `Empleados` (
    `nombre` VARCHAR(25) NOT NULL,
    `area` VARCHAR(25) NOT NULL,
    `pago` VARCHAR(25) NOT NULL,
    `empleadoID` INT AUTO_INCREMENT,
    PRIMARY KEY (`empleadoID`)
)

INSERT `Empleados` (`nombre`,`area`,`pago`)
VALUES (`tomi`,`barista`,`20`)

UPDATE `Empleados`
SET `pago` = `17`
WHERE `nombre` = `tomi`;

DELETE FROM `Empleados` WHERE `nombre` = `tomi`

CREATE TABLE `Clientes` (
    `nombre` VARCHAR(25) NOT NULL,
    `pedidoID` INT NOT NULL,
    `clienteID` INT AUTO_INCREMENT,
    PRIMARY KEY (`clienteID`)
    FOREIGN KEY (`pedidoID`) REFERENCES `Pedidos`(`pedidoID`)
)

CREATE TABLE `Pedidos` (
    `productoID` INT NOT NULL,
    `pedidoID` INT AUTO_INCREMENT,
    PRIMARY KEY (`pedidoID`),
    FOREIGN KEY (`productoID`) REFERENCES `Productos`(`productoID`)
)

CREATE TABLE `DetallesPedidos` (
    `productosPedidos` INT NOT NULL,
    `costeFinal` VARCHAR(25) NOT NULL,
    `pedidoID`INT NOT NULL,
    `detalleID` INT AUTO_INCREMENT,
    PRIMARY KEY (`detalleID`),
    FOREIGN KEY (`pedidoID`) REFERENCES `Pedidos`(`pedidoID`)
)

CREATE TABLE `Productos` (
    `nombre` VARCHAR(25) NOT NULL,
    `categoria` VARCHAR(25) NOT NULL,
    `precio` VARCHAR(25) NOT NULL,
    `productoID` INT AUTO_INCREMENT,
    PRIMARY KEY (`productoID`)
)

CREATE TABLE `Proveedores` (
    `empresa` VARCHAR(25) NOT NULL,
    `productoID` INT NOT NULL,
    `proveedorID` INT AUTO_INCREMENT,
    PRIMARY KEY (`proveedorID`),
    FOREIGN KEY (`productoID`) REFERENCES `Productos`(`productoID`)
)

/*CREATE TABLE `Compras` (
    `productoID` INT NOT NULL,
    `proveedorID` INT NOT NULL,
    `compraID` INT AUTO_INCREMENT,
    PRIMARY KEY (`compraID`),
    FOREIGN KEY (`proveedorID`) REFERENCES `Proveedores`(`proveedorID`),
    FOREIGN KEY (`productoID`) REFERENCES `Productos`(`productoID`)
)*/

