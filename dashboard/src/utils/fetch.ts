// Make the `request` function generic

import axios, { AxiosResponse } from "axios";

// to specify the return data type:
export async function request<TResponse>(
  url: string,
  // `RequestInit` is a type for configuring 
  // a `fetch` request. By default, an empty object.
  config: RequestInit = {}
   
// This function is async, it will return a Promise:
): Promise<TResponse> {
    
  // Inside, we call the `fetch` function with 
  // a URL and config given:
  return fetch(url, config)
    // When got a response call a `json` method on it
    .then((response) => response.json())
    // and return the result data.
    .then((data) => data as TResponse);
    
    // We also can use some post-response
    // data-transformations in the last `then` clause.
}

export const validateRequest = (resquest: AxiosResponse) => {
  if(resquest.status < 300) return true
  return false
}


type NewAuthor = {
  name: string,
  address: string,
  city: string,
  uf: string,
  phone: number,
}

export const createAuthor = async (payload: NewAuthor) => {
  let res = false
  try {
    await axios.post('http://127.0.0.1:8000/api/authors', payload).then((request) => {
      res = validateRequest(request)
    }).catch((e) => {
      console.log(e)
    })
  } catch(e) {
    console.log(e)
  }
  return res
}

export const updateAuthor = async (payload: NewAuthor, id: string) => {
  let res = false
  try {
    await axios.put(`http://127.0.0.1:8000/api/authors/${id}`, payload).then((request) => {
      res = validateRequest(request)
    }).catch((e) => {
      console.log(e)
    })
  } catch(e) {
    console.log(e)
  }
  return res
}