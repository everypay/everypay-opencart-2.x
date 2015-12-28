<script type="text/javascript" src="https://button.everypay.gr/js/button.js"></script>
<script type="text/javascript">
var EVERYPAY_DATA = {
    amount: <?= $total ?>, //1euro
    description: "Button with jSON init",
    key: "<?= $public_key?>",
    locale: "<?=$lang?>",
    callback: '',
    <?php if (false !== $installments): ?>
    max_installments: <?php echo $installments ?>,
    <?php endif; ?>
    sandbox: <?= (int) $sandbox ?>
}

var loadButton = setInterval(function () {
      try {
        EverypayButton.jsonInit(EVERYPAY_DATA, $('#payment-card-form'));
        clearInterval(loadButton);
      } catch (err) {}
}, 100);


</script>
<form id="payment-card-form" method="POST" action="<?= $return_url?>">
    <input type="hidden" name="merchant_order_id" value="<?= $merchant_order_id ?>" />
    <div class="button-holder" style="float: right;"></div>
</form>
