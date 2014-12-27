<p><strong><?php echo $text_instruction; ?></strong></p><br />
<p><?php echo $text_payment; ?></p><br />
<div class="buttons">
    <div class="pull-right">
        <input type="button" value="<?php echo $button_continue; ?>" id="button-confirm" class="btn btn-primary" />
    </div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').on('click', function() {
        $.ajax({
                type: 'get',
                url: 'index.php?route=payment/boleto_cef_sigcb/confirm',
                cache: false,
                beforeSend: function() {
                        $('#button-confirm').button('loading');
                },
                complete: function() {
                        $('#button-confirm').button('reset');
                },   
                success: function() {
                        location = '<?php echo $continue; ?>';
                }
        });
});
--></script>