<?php
use yii\helpers\Url;
use yii\bootstrap\Carousel;
use yii\widgets\Pjax;
use yii\bootstrap\Modal;
use yii\helpers\Html;
use kartik\select2\Select2;
use kartik\grid\GridView;
use yii\helpers\ArrayHelper;
use johnitvn\ajaxcrud\CrudAsset;
use johnitvn\ajaxcrud\BulkButtonWidget;
/* @var $this yii\web\View */
/* @var $searchModel app\models\EventsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Event Schedule';

use aryelds\sweetalert\SweetAlert;
$this->title = 'Meetting Zone Booking';

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


<div class="site-index ">

    <div class="row">
             <div class="ibox ">
                <div class="ibox-title">
    <button class="btn btn-primary pull-right" type="">ห้องประชุม <span class="badge">4</span></button> 
     <button class="btn btn-success pull-right" type="">ห้องประชุม <span class="badge">3</span></button>
     <button class="btn btn-warning pull-right" type=""> ห้องประชุม <span class="badge">2</span></button>
     <button class="btn btn-danger pull-right" type="">ห้องประชุม <span class="badge">1</span></button>
                    <h4>ปฏิทินการจองห้องประชุม</h4>
                </div>
                <div class="ibox-content" >
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
           $(".modal-header").html('<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button><h5><i class="glyphicon glyphicon-list-alt"></i> รายละเอียดการจองห้องประชุม</h5>');
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
                    'options' => ['language' => 'Th'],
                    'clientOptions' => [
                        'fixedWeekCount' => false,
                        'weekNumbers' => true,
                        'editable' => true,
                        'selectable' => true,
                        'eventLimit' => true,
                        'eventLimitText' => 'ดูเพิ่มเติม',
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

<?php
Modal::begin([
    'id' => 'myModal',
    'header' => '<h4 class="modal-title fa fa-th-large ">...</h4>',
    'size' => 'modal-lg',
]);

echo '...';

Modal::end();
?>

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

