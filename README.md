# 📚 Bookstore Website

A fully functional online bookstore built with **PHP** and **MySQL**, deployed using **Docker** on [Render](https://render.com). The application supports browsing books, user registration and login, shopping cart functionality, and order placement — all backed by a live remote MySQL database.

---

## 🚀 Live Demo

🌐 [View the Live Website]([https://your-app-name.onrender.com](https://bookstore-website-4oa3.onrender.com/index.php))  

---

## 🛠️ Features

- 🧾 Browse books with images, descriptions, and pricing
- 🔐 User registration and login system
- 🛒 Add/remove items from a shopping cart
- ✅ Place orders and receive confirmation
- 💾 Remote MySQL database connection
- 📱 Mobile-responsive layout (coming soon)

---

## ⚙️ Technologies Used

- **Frontend**: HTML, CSS, PHP
- **Backend**: PHP + MySQL
- **Database**: [Freesqldatabase.com](https://freesqldatabase.com)
- **Deployment**: Docker + Render

---

## 📂 Project Structure

/
├── index.php # Home page
├── connections.php # DB connection using environment variables
├── cart.php # Shopping cart logic
├── product.php # Product detail pages
├── register.php / login.php / logoff.php
├── order.php # Checkout logic
├── functions.php # Reusable functions
├── csc_350.sql # Database schema (for manual import)
├── styles.css # Frontend styling
├── Dockerfile # PHP + Apache server config
└── README.md


---

## 🐳 Deployment (via Docker)

This app is deployed on Render using a custom `Dockerfile`.

### Dockerfile Highlights:

```dockerfile
FROM php:8.2-apache

RUN a2enmod rewrite && docker-php-ext-install mysqli

ENV DB_HOST=sql5.freesqldatabase.com
ENV DB_USER=sqlXXXXX
ENV DB_PASSWORD=********
ENV DB_NAME=sqlXXXXX

COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html
```

🧰 Setup Instructions (Local Development)

1. **Clone the repo:**

   git clone https://github.com/yemoe/bookstore-website.git
   cd bookstore-website

2. **Start a PHP development server:**

   php -S localhost:8000

3. **Import the SQL database:**

   Use phpMyAdmin or MySQL CLI to import csc_350.sql into your local DB

4. **Update connections.php with your local database credentials.**

📱 Responsiveness
The site is being updated to fully support mobile responsiveness using modern CSS best practices and media queries. You can inspect the layout via Chrome DevTools (Device Toggle).

🧑‍💻 Author
Ye Moe

Transfer CS Student at Baruch College

Aspiring Software Engineer

LinkedIn: https://www.linkedin.com/in/ye-moe-42493329a/
