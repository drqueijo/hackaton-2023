import React from 'react';
import { Card as AntdCard} from 'antd';
import Image from 'next/image'
const { Meta } = AntdCard;

type CardProps = {
  img: string,
  title: string,
  desc: string
}
const Card: React.FC<CardProps> = ({
  img,
  title,
  desc
}) => (
  <AntdCard
    hoverable
    style={{ width: 240 }}
    cover={<Image alt="example" src="https://os.alipayobjects.com/rmsportal/QBnOOoLaAfKPirc.png" />}
  >
    <Meta title="Europe Street beat" description="www.instagram.com" />
  </AntdCard>
);

export default Card;