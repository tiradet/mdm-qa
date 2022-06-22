<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\grid\GridView;
use johnitvn\ajaxcrud\CrudAsset;
use johnitvn\ajaxcrud\BulkButtonWidget;
use yii\bootstrap\Modal;
/* @var $this yii\web\View */
/* @var $searchModel app\models\EventsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Event Schedule';

?>
<style>
    .popover-title {
    padding: 8px 14px;
    margin: 0;
    font-size: 14px;
    color:#fff;
    background-color:#1C2331;
    border-bottom: 1px solid #ebebeb;
    border-radius: 5px 5px 0 0;
}
.popover-content {
    color:#120606;
    padding: 9px 14px;
    background-color:#ebebeb;
}
    .fc-content {
        font-size: 14px;
        font-weight: bold;
        padding: 8px;

    }


    .closon {
        position: absolute;
        top: -2px;
        right: 0;
        cursor: pointer;
        background-color: #FFF
    }
    .popover{
        max-width:450px;   
    }
</style>

    <?php
    Modal::begin([
        'id' => 'myModal',
            'options' => [
        'tabindex' => false // important for Select2 to work properly
    ],
        'header' => '<h4 class="modal-title fa fa-th-large "> ...</h4>',
        'size' => 'modal-lg',
    ]);

    echo '...';

    Modal::end();
    ?>
<?php
yii\bootstrap\Modal::begin([
    'id' => 'eventModal',
    "size" => "modal-lg",
    //'header' => "<div class='row'><div class='col-xs-6'><h3>Add Event</h3></div><div class='col-xs-6'>".Html::a('Delete', ['#'], ['class' => 'btn btn-danger pull-right', 'style' => 'margin-top:5px'])."</div></div>",
    'header' => "<h3><i class='glyphicon glyphicon-list-alt'></i>Add Event</h3>",
]);

yii\bootstrap\Modal::end();
?>




<?php
if (\Yii::$app->session->hasFlash('maxEvent')) {
    ?>
    <div class="col-xs-12 no-padding">
        <div class="alert alert-warning alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?php echo \Yii::$app->session->getFlash('maxEvent'); ?>
        </div>
    </div>
    <?php
}
?>

<section class="content">

    <div class="box box-solid box-warning">

        <div class="box-body">
        	    <button class="btn btn-primary" type="button">รถยนต์นั่ง <span class="badge"></span></button>
    <button class="btn btn-success" type="button">รถยนต์บรรทุก <span class="badge"></span></button>
    <button class="btn btn-warning" type="button"> รถจักรยานยนต์ <span class="badge"></span></button>
    <button class="btn btn-danger" type="button">รถบ้าน <span class="badge"></span></button>
            <div class="col-lg-12 ">
                <?php
                $AEurl = Url::to(["events/add-event"]);
                $UEurl = Url::to(["site/view-event"]);

                $JSEvent = <<<EOF
function(start, end, allDay) {
	var start = moment(start).unix();
   	var end = moment(end).unix();
	$.ajax({
	   url: "{$AEurl}",
	   data: { start_date : start, end_date : end },
	   type: "GET",
	   success: function(data) {
		   $(".modal-body").addClass("row");
		   $(".modal-header").html('<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button><h3>Add Event</h3>');
		   $('.modal-body').html(data);
		   $('#eventModal').modal();
	   }
   	});
		}
EOF;

                $JSEventClick = <<<EOF
function(calEvent, jsEvent, view) {
    var eventId = calEvent.id;
	$.ajax({
	   url: "{$UEurl}",
	   data: { event_id : eventId },
	   type: "GET",
	   success: function(data) {
		   $(".modal-body").addClass("row");
		   $(".modal-header").html('<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button><h4><i class="glyphicon glyphicon-list-alt"></i> Event Description</h4>');
		   $('.modal-body').html(data);
		   $('#eventModal').modal();
	   }
   	});
	$(this).css('border-color', 'red');
}
EOF;
                $JsF = <<<EOF
		function (event, element) {
			var start_time = moment(event.start).format("DD-MM-YYYY, h:mm:ss a");
		    	var end_time = moment(event.end).format("DD-MM-YYYY, h:mm:ss a");

			element.popover({
		            title: event.title,
		            placement: 'top',
		            html: true,
			    global_close: true,
			    container: 'body',
			    trigger: 'hover',
			    delay: {"show": 500},
		            content: "<table class='table table-inverse'><tr><th> Start : </t><td>" + start_time + "</td></tr><tr><th> Finish : </th><td>" + end_time + "</td></tr></table>"
        		});
               }
EOF;
                ?>

                <?=
                \yii2fullcalendar\yii2fullcalendar::widget([
                    'options' => ['language' => 'th'],
                    'clientOptions' => [
                        'fixedWeekCount' => false,
                        'weekNumbers' => true,
                        'editable' => true,
                        'selectable' => true,
                        'eventLimit' => true,
                        'eventLimitText' => 'more Events',
                        'selectHelper' => true,
                        'header' => [
                            'left' => 'today prev,next',
                            'center' => 'title',
                            'right' => 'month,agendaWeek,agendaDay'
                        ],
                        //'select' =>  new \yii\web\JsExpression($JSEvent),
                        'eventClick' => new \yii\web\JsExpression($JSEventClick),
                        'eventRender' => new \yii\web\JsExpression($JsF),
                        'aspectRatio' => 2,
                        'timeFormat' => 'hh(:mm) A'
                    ],
                    'ajaxEvents' => Url::toRoute(['/site/view-events'])
                ]);
                ?>
            </div>
        </div>
    </div>
</section>
<?php
$this->registerJs("
    $('#myModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var modal = $(this)
        var title = button.data('title')
        var href = button.attr('href')
        modal.find('.modal-title').html(title)
        modal.find('.modal-body').html('<i class=\"fa fa-spinner fa-pulse\"></i>')
        $.post(href)
            .done(function( data ) {
                modal.find('.modal-body').html(data)
            });
        })
");
?>