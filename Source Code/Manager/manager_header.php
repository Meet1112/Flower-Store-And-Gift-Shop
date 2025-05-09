<?php
if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>

<header class="header">

   <div class="flex">

    <a href="manager_page.php" class="logo">Manager<span>Panel</span></a>

      <nav class="navbar">
        <a href="manager_page.php">Home</a>
        <a href="manager_products.php">Products</a>
        <a href="manager_orders.php">Orders</a>
        <a href="manager_users.php">Users</a>
        <a href="manager_contacts.php">Messages</a>
      </nav>


      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <div id="user-btn" class="fas fa-user"></div>
      </div>

      <div class="account-box">
         <p>username : <span><?php echo $_SESSION['manager_name']; ?></span></p>
         <p>email : <span><?php echo $_SESSION['manager_email']; ?></span></p>
         <a href="logout.php" class="delete-btn">logout</a>
         <div>new <a href="login.php">login</a> | <a href="register.php">register</a> </div>
      </div>

   </div>

</header>