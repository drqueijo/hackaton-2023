import Button from "n/components/UI/Button";
import { api } from "n/utils/api";
import { signIn, signOut, useSession } from "next-auth/react";
export default function Home() {
  const { data: sessionData } = useSession();
  
  const { data: secretMessage } = api.auth.getSecretMessage.useQuery(
    undefined, // no input
    { enabled: sessionData?.user !== undefined },
  );

  return (
    <div className="flex flex-col items-center justify-center gap-4">
      <p className="text-center text-2xl text-gray-800">
        {sessionData && <span>Logged in as {sessionData.user?.name}</span>}
        {secretMessage && <span> - {secretMessage}</span>}
      </p>
      <Button
        text={sessionData ? "Sign out" : "Sign in"}
        onClick={sessionData ? () => void signOut() : () => void signIn()}
      />
    </div>
  );
}
