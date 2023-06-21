/* eslint-disable @typescript-eslint/no-floating-promises */
/* eslint-disable @typescript-eslint/no-explicit-any */
import { DeleteOutlined, EditOutlined } from '@ant-design/icons';
import { Modal } from 'antd';
import { useRouter } from 'next/router';
import React from 'react';


type TableActionsProps = {
  id: number;
  pathName: string;
}

enum TableActionsType {
  DELETE = 1,
  EDIT = 2,
}

const Button: React.FC<TableActionsProps> = ({
  id,
  pathName
}) => {
  const router = useRouter()

  const redirect = (pathName: string, type: TableActionsType) => {
    router.push(`${pathName}/new/${id}`)
  }

  const openDeleteModal = () => {
    Modal.confirm({
      onCancel: () => console.log(id),
      title: 'Are you sure you want to delete this record?',
      cancelText: 'Cancel',
      okType: 'default'
    })
  }

  return (
    <div className="md:w-2/3 flex gap-3 text-lg">
      <EditOutlined onClick={() => redirect(pathName, TableActionsType.EDIT)} className='text-blue-700' />
      <DeleteOutlined onClick={() => openDeleteModal()} className='text-red-700'/>
    </div>
  );
}


export default Button;