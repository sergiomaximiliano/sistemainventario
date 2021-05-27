<?php
$page_title = 'Venta diaria';
require_once('includes/load.php');
// Checkin What level user has permission to view this page
page_require_level(3);
?>

<?php
$year  = date('Y');
$month = date('m');
$sales = dailySales($year, $month);
$totalProfit = 0; $totalSales = 0;
?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-6">
    <?php echo display_msg($msg); ?>
  </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading clearfix">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>Venta diaria</span>
        </strong>
      </div>
      <div class="panel-body">
        <table class="table table-bordered table-striped">
          <thead>
            <tr>
              <th class="text-center" style="width: 50px;">#</th>
              <th> Descripción </th>
              <th class="text-center" style="width: 15%;"> Cantidad vendida</th>
              <th class="text-center" style="width: 15%;"> Total </th>
              <th class="text-center" style="width: 15%;"> Ganancia </th>
              <th class="text-center" style="width: 15%;"> Fecha </th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($sales as $sale) : ?>
              <?php $totalProfit += $sale["profit"]; $totalSales += $sale["total_saleing_price"]; ?>
              <tr>
                <td class="text-center"><?php echo count_id(); ?></td>
                <td><?php echo remove_junk($sale['name']); ?></td>
                <td class="text-center"><?php echo $sale['qty']; ?></td>
                <td class="text-center"><?php echo remove_junk(number_format($sale['total_saleing_price'], 2)); ?></td>
                <td class="text-center"><?php echo remove_junk($sale['profit']); ?></td>
                <td class="text-center"><?php echo date("d/m/Y", strtotime($sale['date'])); ?></td>
              </tr>
            <?php endforeach; ?>
          </tbody>
          <tfoot>
            <tr>
              <td class="text-center"><strong>Totales</strong></td>
              <td class="text-center">-</td>
              <td class="text-center">-</td>
              <td class="text-center"><strong><?php echo number_format($totalSales, 2) ?></strong></td>
              <td class="text-center"><strong><?php echo number_format($totalProfit, 2) ?></strong></td>
              <td class="text-center">-</td>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  </div>
</div>

<?php include_once('layouts/footer.php'); ?>