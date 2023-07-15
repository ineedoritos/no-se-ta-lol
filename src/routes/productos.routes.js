import { Router } from "express";
import { prisma } from "../db.js";

const router = Router();

router.get("/productos", async (req, res)=>{
   const productos = await prisma.producto.findMany();
   res.json(productos);
})

router.post("/productos", async (req, res)=>{
    const newProducto = await prisma.producto.create({
        descripcion: req.body
    });
    res.json(newProducto)   
})

export default router;

