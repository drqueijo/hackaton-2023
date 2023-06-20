import Head from "next/head";
import { api } from "n/utils/api";
import TextInput from "n/components/UI/TextInput";
import { FormEvent, FormEventHandler, useRef, useState } from "react";
import { z } from "zod";
import Form from "n/components/UI/Form";
import { notification } from "antd";
import { request } from 'n/utils/fetch'
import axios from 'axios'
export default function NewAuthor() {
  const [form, setForm] = useState({
    name: '',
    address: '',
    city: '',
    uf: '',
    phone: '',
  })

  const onSubmit = async () => {
    const schema = z.object({
      name: z.string(),
      address: z.string(),
      city: z.string(),
      uf: z.string(),
      phone: z.number(),
    });
    const parsedForm = {
      ...form,
      phone: parseInt(form.phone)
    }
    const validatedData = schema.safeParse(parsedForm);
   
    if(validatedData.success) {
      try {
        await axios.post('http://127.0.0.1:8000/authors', parsedForm).then((res) => {
          console.log(res)
        }).catch((e) => {
          console.log(e)
        })
      } catch(e) {
        console.log(e)
      }

      return notification.success({
        message:'Created sucessfully!!',
        description: ''
      })
    }
    if(validatedData.error){
      return notification.error({
        message: validatedData.error.errors[0]?.message,
        description: validatedData.error.errors[0]?.path
      })
    }
  }

  return (
    <Form onSubmit={onSubmit}>
      <TextInput 
        label='name'
        placeholder="jose"
        onChange={(e) => setForm({...form, name: e.target.value})}
        value={form.name}
      />
      <TextInput 
        label='address'
        placeholder="av abcd"
        onChange={(e) => setForm({...form, address: e.target.value})}
        value={form.address}
      />
      <TextInput 
        label='city'
        placeholder="pindamonhangaba"
        onChange={(e) => setForm({...form, city: e.target.value})}
        value={form.city}
      />
      <TextInput 
        label='UF'
        placeholder="parana"
        onChange={(e) => setForm({...form, uf: e.target.value})}
        value={form.uf}
      />
      <TextInput 
        label='phone'
        placeholder="44 9 9999 9999"
        onChange={(e) => setForm({...form, phone: e.target.value})}
        value={form.phone}
      />

    </Form>
  );
}
