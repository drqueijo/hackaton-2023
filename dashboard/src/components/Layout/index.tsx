/* eslint-disable @typescript-eslint/no-floating-promises */
import { BookOutlined, FormOutlined, HighlightOutlined, ShopOutlined } from '@ant-design/icons';
import { Layout, Menu, theme } from 'antd';
import { useRouter } from 'next/router';
import { type MenuInfo } from 'rc-menu/lib/interface';
import React from 'react';

const { Header, Content, Footer, Sider } = Layout;
type DefaultLayoutProps = {
  children: React.ReactNode;
} 

export const routes = [
  {
    name:'Authors',
    path: '/authors',
    icon: HighlightOutlined
  },
  {
    name:'Courses',
    path: '/courses',
    icon: FormOutlined
  },
  {
    name:'Publisers',
    path: '/publishers',
    icon: ShopOutlined
  },
  {
    name:'Books',
    path: '/books',
    icon: BookOutlined
  }
]

const DefaultLayout: React.FC<DefaultLayoutProps> = ({
  children,
}) => {
  const router = useRouter()
  const {
    token: { colorBgContainer },
  } = theme.useToken();

  const selectedKey =  routes.findIndex((item) => router.pathname.includes(item.path)) + 1 ?? 1

  const navigation = async (path: string) => {
    await router.push(path)
  }
  
  const navigate = (e: MenuInfo) => {
    const {key} = e
    let path =  '/'
    routes.forEach((route, i) => {
      if(i + 1 === parseInt(key)) path = route.path
    })
    navigation(path)
  }
  return (
    <Layout>
      <Sider
        breakpoint="lg"
        collapsedWidth="0"
        onBreakpoint={(broken) => {
          console.log(broken);
        }}
        onCollapse={(collapsed, type) => {
          console.log(collapsed, type);
        }}
      >
        <div className="demo-logo-vertical" />
        <Menu
          theme="dark"
          mode="inline"
          onClick={(e) => navigate(e)}
          defaultSelectedKeys={[selectedKey.toString()]}
          items={routes.map(
            (route, index) => ({
              key: String(index + 1),
              icon: React.createElement(route.icon),
              label: route.name,
            }),
          )}
        />
      </Sider>
      <Layout>
        <Header style={{ padding: 0, background: colorBgContainer }} />
        <Content style={{ margin: '24px 16px 0' }}>
          <div style={{ padding: 24, minHeight: '87vh', background: colorBgContainer, margin: 'auto' }}>
            {children}
          </div>
        </Content>
        <Footer style={{ textAlign: 'center' }}>Hackaton ©2023</Footer>
      </Layout>
    </Layout>
  );
};

export default DefaultLayout;