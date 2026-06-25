import express from "express";
import cors from "cors";
import dotenv from "dotenv";

import usersRouter from "./routes/users.routes";
import productsRouter from "./routes/products.routes";

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3001;

app.use(cors());
app.use(express.json());

app.use("/users", usersRouter);
app.use("/products", productsRouter);

app.get("/", (_req, res) => {
  res.json({ message: "API is running" });
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});