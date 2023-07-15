import { Router } from "express";
import { prisma } from "../db.js";
const router = Router()

router.get("/categorias", async (req, res)=>{
  const  categorias = await prisma.categoria.findMany();
  res.json(categorias)
})

router.post("/categorias", async (req, res)=>{
   const newCategoria = await prisma.Categoria.create({
        data: req.body,
    });
    res.json(newCategoria)
}) 


export default router;