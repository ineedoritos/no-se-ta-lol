-- CreateTable
CREATE TABLE `producto` (
    `idProducto` INTEGER NOT NULL AUTO_INCREMENT,
    `nombreProducto` VARCHAR(191) NOT NULL,
    `precio` DOUBLE NOT NULL,
    `stock` INTEGER NOT NULL,
    `descripcion` VARCHAR(191) NOT NULL,
    `categoriaID` INTEGER NOT NULL,

    PRIMARY KEY (`idProducto`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Categoria` (
    `idCategoria` INTEGER NOT NULL AUTO_INCREMENT,
    `descripcion` VARCHAR(191) NOT NULL DEFAULT '',

    PRIMARY KEY (`idCategoria`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `producto` ADD CONSTRAINT `producto_categoriaID_fkey` FOREIGN KEY (`categoriaID`) REFERENCES `Categoria`(`idCategoria`) ON DELETE RESTRICT ON UPDATE CASCADE;
