import { type AppType } from "next/app";
import { api } from "n/utils/api";
import "n/styles/globals.css";
import DefaultLayout from "n/components/Layout";

const MyApp: AppType = ({ Component, pageProps }) => {
  return (
    <DefaultLayout>
      <Component {...pageProps}/>
    </DefaultLayout>
  );
};

export default api.withTRPC(MyApp);
