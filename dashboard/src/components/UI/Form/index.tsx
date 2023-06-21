/* eslint-disable @typescript-eslint/no-explicit-any */
import React from 'react';
import Button from '../Button';


type FormProps = {
  children: React.ReactNode,
  onSubmit: () => any
}

const Form: React.FC<FormProps> = ({
  children,
  onSubmit
}) => {
  const submit = ( e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault()
    void onSubmit()
  }
  return (
    <form onSubmit={(e) => submit(e)} className="w-full max-w-lg">
      {children}
      <div className="md:flex md:items-center">
        <div className="md:w-1/3"></div>
          <Button text='Submit' type='submit' />
        </div>
      <div />
    </form>
  );
}


export default Form;