import { z } from "zod";
import { createTRPCRouter, publicProcedure } from "n/server/api/trpc";
import {request, validateRequest} from 'n/utils/fetch'
import axios from "axios";
type Author = {
    id: number,
    name: string,
    address: string,
    city: string,
    uf: string,
    phone: number,
    created_at?: string,
    updated_at?: string
}
export const authorRouter = createTRPCRouter({
  getAll: publicProcedure
    .query(async () => {
      const res = await request<Author[]>('http://127.0.0.1:8000/authors')
      return res;
    }),
  create: publicProcedure
    .input(z.object({ 
      name: z.string(),
      address: z.string(),
      city: z.string(),
      uf: z.string(),
      phone: z.number(),
     }))
    .query(async (input) => {
      const res = await request<string>('http://127.0.0.1:8000/authors', {
        method: "POST",
        body: JSON.stringify(input),
        headers: {"Content-type": "application/json; charset=UTF-8"}
      })
      return res
    })
});





