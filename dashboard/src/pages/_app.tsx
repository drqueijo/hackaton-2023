import { type AppType } from "next/app";
import { api } from "n/utils/api";
import "n/styles/globals.css";
import DefaultLayout from "n/components/Layout";
import { SessionProvider } from "next-auth/react";
import { type Session } from "next-auth";

const MyApp: AppType<{ session: Session | null }> = ({ 
  Component, 
  pageProps: {session, ...pageProps}
}) => {
  return (
    <SessionProvider session={session}>
      <DefaultLayout>
        <Component {...pageProps}/>
      </DefaultLayout>
    </SessionProvider>

  );
};

export default api.withTRPC(MyApp);
