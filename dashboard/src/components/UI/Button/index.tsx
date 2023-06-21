/* eslint-disable @typescript-eslint/no-explicit-any */
import React from 'react';


type ButtonProps = {
  text: string,
  type?: "submit" | "reset" | undefined
  onClick?: () => any
}

const Button: React.FC<ButtonProps> = ({
  text,
  type,
  onClick
}) => {

  return (
    <div className="md:w-2/3">
      <button
        onClick={onClick} 
        className="shadow bg-purple-500 hover:bg-purple-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded" 
        type={type}
      >
        {text}
      </button>
    </div>
  );
}


export default Button;