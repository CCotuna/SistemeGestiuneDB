import express from "express";
import bodyParser from "body-parser";
import nodemailer from "nodemailer";

const app = express();
const port = 3000;

app.use(bodyParser.json());

const transporter = nodemailer.createTransport({
  host: "smtp.gmail.com",
  port: 587,
  secure: false,
  auth: {
    user: "cotunacalin45@gmail.com",
    pass: "****",
  },
});

const storedEmails = ["calin.cotuna@emanuel.ro"]; /

app.post("/add-email", (req, res) => {
  const { email } = req.body;
  storedEmails.push(email);
  res.status(200).send("Email added successfully");
});

app.post("/send-emails", (req, res) => {
  const { subject, text } = req.body;

  const mailOptions = {
    from: "cotunacalin45@gmail.com",
    to: storedEmails.join(", "),
    subject: subject,
    text: text,
  };

  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      console.error("Error sending email:", error); 
      res.status(500).send("Failed to send email");
    } else {
      console.log("Email sent:", info.response);
      res.status(200).send("Email sent successfully");
    }
  });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
