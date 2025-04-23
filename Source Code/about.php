    <?php

    @include 'config.php';

    session_start();

    $user_id = $_SESSION['user_id'];

    if(!isset($user_id)){
    header('location:login.php');
    }

    ?>

    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>about</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- custom admin css file link  -->
    <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
    
    <?php @include 'header.php'; ?>

    <section class="heading">
        <h3>about us</h3>
        <p> <a href="home.php">home</a> / about </p>
    </section>

    <section class="about">

<div class="flex">

    <div class="image">
        <img src="images/about-img-1.png" alt="">
    </div>

    <div class="content">
        <h3>Why Choose Us?</h3>
        <p>We handpick the freshest flowers and create unique arrangements to brighten your special moments. From birthdays to weddings, our expert florists bring your vision to life with beauty and elegance.</p>
        <a href="shop.php" class="btn">Shop Now</a>
    </div>

</div>

<div class="flex">

    <div class="content">
        <h3>What We Provide?</h3>
        <p>We offer a wide variety of flowers, customized bouquets, and same-day delivery. Whether it’s love, sympathy, or celebration — we have the perfect floral design for every emotion and occasion.</p>
        <a href="contact.php" class="btn">Contact Us</a>
    </div>

    <div class="image">
        <img src="images/about-img-2.jpg" alt="">
    </div>

</div>

<div class="flex">

    <div class="image">
        <img src="images/about-img-3.jpg" alt="">
    </div>

    <div class="content">
        <h3>Who We Are?</h3>
        <p>FlowerStore is a local florist with a love for creativity and customer care. Our mission is to spread happiness through flowers and build lasting connections with every bouquet we deliver.</p>
        <a href="#reviews" class="btn">Client Reviews</a>
    </div>

</div>

</section>

<section class="reviews" id="reviews">

<h1 class="title">client's reviews</h1>

<div class="box-container">

    <div class="box">
        <img src="images/pic-1.png" alt="">
        <p>I ordered a bouquet for my sister's birthday and it arrived right on time! The flowers were fresh and beautifully arranged. Highly recommended!</p>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
        </div>
        <h3>Neha Patel</h3>
    </div>

    <div class="box">
        <img src="images/pic-2.png" alt="">
        <p>FlowerStore never disappoints. I’ve used their service for anniversaries and get-well gifts — always stunning arrangements and great customer service!</p>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
        </div>
        <h3>Rahul Mehta</h3>
    </div>

    <div class="box">
        <img src="images/pic-3.png" alt="">
        <p>Such a lovely experience! The flowers I received were fresh and fragrant, and the packaging was so elegant. Will order again soon.</p>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
        </div>
        <h3>Priya Desai</h3>
    </div>

    <div class="box">
        <img src="images/pic-4.png" alt="">
        <p>Incredible service and beautiful flowers! They helped me customize a bouquet for my wedding anniversary and it turned out perfect.</p>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
        </div>
        <h3>Aditya Sharma</h3>
    </div>

    <div class="box">
        <img src="images/pic-5.png" alt="">
        <p>I’m always impressed with their quality and service. Their delivery is quick, and the flowers stay fresh for days. Best florist in town!</p>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
        </div>
        <h3>Kavita Joshi</h3>
    </div>

    <div class="box">
        <img src="images/pic-6.png" alt="">
        <p>The flowers were exactly as shown on the website. Elegant, fresh, and perfectly arranged. I’ll definitely be ordering again for special occasions.</p>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
        </div>
        <h3>Sneha Verma</h3>
    </div>

</div>

</section>




    <?php @include 'footer.php'; ?>

    <script src="js/script.js"></script>

    </body>
    </html>