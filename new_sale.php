<?php
$page_title = 'Nueva venta';
require_once('includes/load.php');
// Checkin What level user has permission to view this page
page_require_level(3);
$all_products = find_all('products');
?>
<?php

if (isset($_POST['add_sale'])) {
    $req_fields = array('s_id', 'quantity', 'price', 'total');
    validate_fields($req_fields);
    if (empty($errors)) {
        $p_id      = $db->escape((int)$_POST['s_id']);
        $s_qty     = $db->escape((int)$_POST['quantity']);
        $s_total   = $db->escape($_POST['total']);
        // $date      = $db->escape($_POST['date']);
        $s_date    = make_date();

        $sql  = "INSERT INTO sales (";
        $sql .= " product_id,qty,price,date";
        $sql .= ") VALUES (";
        $sql .= "'{$p_id}','{$s_qty}','{$s_total}','{$s_date}'";
        $sql .= ")";

        if ($db->query($sql)) {
            update_product_qty($s_qty, $p_id);
            $session->msg('s', "Venta agregada ");
            redirect('add_sale.php', false);
        } else {
            $session->msg('d', 'Lo siento, registro falló.');
            redirect('add_sale.php', false);
        }
    } else {
        $session->msg("d", $errors);
        redirect('add_sale.php', false);
    }
}

?>
<?php include_once('layouts/header.php'); ?>
<script type="text/javascript" src="/assets/js/sales.js"></script>
<div class="row">
    <div class="row">

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading clearfix">
                    <strong>
                        <span class="glyphicon glyphicon-th"></span>
                        <span>Agregar venta</span>
                    </strong>
                </div>
                <div class="panel-body">
                    <form method="post" action="new_sale.php" class="clearfix">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <select id="selectProduct" class="form-control" name="s_id">
                                        <option value="">Selecciona un producto</option>
                                        <?php foreach ($all_products as $prod) : ?>
                                            <option price="<?php echo (int)$prod['sale_price'] ?>" value="<?php echo (int)$prod['id'] ?>">
                                                <?php echo $prod['name'] ?>
                                            </option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-shopping-cart"></i>
                                        </span>
                                        <input type="number" step=".01" min="0" class="form-control" name="quantity" placeholder="Cantidad (Kilos, litros o unidades)">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-usd"></i>
                                        </span>
                                        <input type="number" min="0" class="form-control" name="total" placeholder="Monto total de venta">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group hide">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-usd"></i>
                                        </span>
                                        <input type="number" class="form-control price" name="price" placeholder="Precio total de venta">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <button type="submit" name="new_sale" class="btn btn-primary">Guardar venta</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                <input type="hidden" name="add_sale" value="true">
                </form>
            </div>
        </div>
    </div>

</div>

<?php include_once('layouts/footer.php'); ?>