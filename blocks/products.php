<?php
  if (isset($_GET['id'])) {
    $productId = $_GET['id'];
    $nav_select = "SELECT * FROM products WHERE category_id = $productId";
    $result = mysqli_query($connect, $nav_select);
    $products = mysqli_fetch_all($result);
    $title = mysqli_fetch_all(mysqli_query($connect, "SELECT name FROM categories WHERE id = $productId"));
  } else {
    $nav_select = "SELECT * FROM products";
    $result = mysqli_query($connect, $nav_select);
    $products = mysqli_fetch_all($result);
  };
?>

<div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2"><?= $title[0][0] ?></span></h2>
        </div>
        <div class="row px-xl-5 pb-3">

            <?php foreach ($products as $product) {
              $productId = $product[0];
              $categoryId = $product[1];
              $productName = $product[2];
              $productPrice = $product[3];
              $productImage = $product[4];
            ?>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="card product-item border-0 mb-4">
                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                    <img class="img-fluid w-100" src="storage/<?= $productImage ?>" alt="<?= $productName ?>">
                </div>
                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                    <h6 class="text-truncate mb-3"><?= $productName ?></h6>
                    <div class="d-flex justify-content-center">
                        <h6>$<?= $productPrice ?></h6><h6 class="text-muted ml-2"></h6>
                    </div>
                </div>
                <div class="card-footer d-flex justify-content-between bg-light border">
                    <a href="#" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                    <a href="#" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                </div>
            </div>
        </div>
    <?php } ?>
        </div>
    </div>