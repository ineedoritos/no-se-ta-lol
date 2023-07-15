import  Express  from "express";
import categoriasRoutes from "../src/routes/categorias.routes.js";
import productosRoutes from "../src/routes/productos.routes.js"


const app = Express();


app.listen(3000);

app.use(Express.json());
app.use("/api", categoriasRoutes);
app.use("/api", productosRoutes);

console.log("furula at: 3000")
