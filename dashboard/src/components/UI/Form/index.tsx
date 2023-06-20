/* eslint-disable @typescript-eslint/no-explicit-any */
import React from 'react';


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
          <div className="md:w-2/3">
            <button 
              className="shadow bg-purple-500 hover:bg-purple-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded" 
              type="submit"
            >
              Submit
            </button>
          </div>
        </div>
    </form>
  );
}


export default Form;