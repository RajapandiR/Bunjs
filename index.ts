import express from 'express';
import "dotenv/config";
const app = express();

app.use(express.json());

app.get("/ping", (req, res) => {
 res.send("🏓 pong!");
});
const port = process.env.PORT
app.listen(port, () => {
  console.log(`Server running at ${port}!`);
});