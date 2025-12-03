CREATE TABLE `Empleados` (
    `nombre` VARCHAR(25) NOT NULL,
    `area` VARCHAR(25) NOT NULL,
    `pago` VARCHAR(25) NOT NULL,
    `empleadoID` INT AUTO_INCREMENT,
    PRIMARY KEY (`empleadoID`)
)

CREATE TABLE `Clientes` (
    `nombre` VARCHAR(25) NOT NULL,
    `productoID` INT NOT NULL,
    `clienteID` INT AUTO_INCREMENT,
    PRIMARY KEY (`clienteID`),
    FOREIGN KEY (`productoID`) REFERENCES `Productos`(`productoID`)
)

CREATE TABLE `Productos` (
    `nombre` VARCHAR(25) NOT NULL,
    `categoria` VARCHAR(25) NOT NULL,
    `precio` VARCHAR(25) NOT NULL,
    `productoID` INT AUTO_INCREMENT,
    PRIMARY KEY (`productoID`)
)

CREATE TABLE `Pedidos` (
    `clienteID` INT NOT NULL,
    `pedidoID` INT AUTO_INCREMENT,
    PRIMARY KEY (`pedidoID`),
    FOREIGN KEY (`clienteID`) REFERENCES `Clientes`(`clienteID`)
)

CREATE TABLE `DetallesPedidos` (
    `productosPedidos` INT NOT NULL,
    `costeFinal` VARCHAR(25) NOT NULL,
    `pedidoID`INT NOT NULL,
    `detalleID` INT AUTO_INCREMENT,
    PRIMARY KEY (`detalleID`),
    FOREIGN KEY (`pedidoID`) REFERENCES `Pedidos`(`pedidoID`)
)

CREATE TABLE `Proveedores` (
    `empresa` VARCHAR(25) NOT NULL,
    `productoID` INT NOT NULL,
    `proveedorID` INT AUTO_INCREMENT,
    PRIMARY KEY (`proveedorID`),
    FOREIGN KEY (`productoID`) REFERENCES `Productos`(`productoID`)
)

CREATE TABLE `ComprasProveedores` (
    
    
    `compraID` INT AUTO_INCREMENT,
    PRIMARY KEY (`compraID`),
)