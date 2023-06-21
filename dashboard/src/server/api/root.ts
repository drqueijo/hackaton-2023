import { exampleRouter } from "n/server/api/routers/example";
import { createTRPCRouter } from "n/server/api/trpc";
import { authorRouter } from "./routers/author";
import { publisherRouter } from "./routers/publisher";
import { courseRouter } from "./routers/course";

/**
 * This is the primary router for your server.
 *
 * All routers added in /api/routers should be manually added here.
 */
export const appRouter = createTRPCRouter({
  example: exampleRouter,
  author: authorRouter,
  course: courseRouter,
  publisher: publisherRouter
});

// export type definition of API
export type AppRouter = typeof appRouter;
