/* eslint-disable @typescript-eslint/no-misused-promises */
import { Col, Row, Table } from 'antd';
import Button from 'n/components/UI/Button';
import { api } from 'n/utils/api';
import { useRouter } from 'next/router';
import React from 'react';
import axios from 'axios'
import { ColumnsType } from 'antd/es/table';
import TableActions from 'n/components/UI/TableActions';
import { Author } from 'n/server/api/routers/author';
import { routes } from 'n/components/Layout';

const columns: ColumnsType<Author> = [
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
  {
    title: 'id',
    dataIndex: 'id',
    key: 'id',
    render: (id, record) => <TableActions id={record.id} pathName='/authors'/>
  },
];


const AuthorsList: React.FC = ({

}) => {
  const router = useRouter()
  const {data} = api.author.getAll.useQuery()

  return(
    <>
      <Row>
        <Col span={24}>
          <Button text='Create New' onClick={() => router.push('/authors/new')}/>
        </Col>
      </Row>
      <Row>
        <Col span={24}>
          <Table dataSource={data} columns={columns} />
        </Col>
      </Row>
    </>

  )
}

export default AuthorsList;