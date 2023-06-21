import { Table } from 'antd';
import { api } from 'n/utils/api';
import React from 'react';
import axios from 'axios'


const dataSource = [
  {
    key: '1',
    name: 'Mike',
    age: 32,
    address: '10 Downing Street',
  },
  {
    key: '2',
    name: 'John',
    age: 42,
    address: '10 Downing Street',
  },
];

const columns = [
  {
    title: 'Name',
    dataIndex: 'name',
    key: 'name',
  },
  {
    title: 'Address',
    dataIndex: 'address',
    key: 'address',
  },
  {
    title: 'City',
    dataIndex: 'city',
    key: 'city',
  },
  {
    title: 'UF',
    dataIndex: 'uf',
    key: 'uf',
  },
  {
    title: 'Phone',
    dataIndex: 'phone',
    key: 'phone',
  },
];



const AuthorsList: React.FC = ({

}) => {
  
  const authors = axios.get('http://127.0.0.1:8000/api/authors')

  console.log(authors)
  const {data} = api.author.getAll.useQuery()

  return(
    <Table dataSource={data} columns={columns} />
  )
}

export default AuthorsList;