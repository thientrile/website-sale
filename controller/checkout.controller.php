<?php 
if($_GET['act']=='all')
{
    $checkout->order();
}
if($_GET['act']=='one')
{
    $product_id=intval($_POST['product_id']);
    $price=floatval($_POST['price']);
    $discount=floatval($_POST['discount']);

   
    $checkout->order_One($product_id,$discount,$price);
 
}

?>