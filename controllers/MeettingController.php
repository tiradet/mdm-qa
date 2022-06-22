<?php

namespace app\controllers;
use app\models\Booking;
use app\models\BookingSearch;
use Yii;

class MeettingController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $this->layout='guest';
        $searchModel = new BookingSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->sort = [
            'defaultOrder' => [
                'start_meet' => SORT_DESC,
            ]];

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionBooking()
    {

        $this->layout='guest';
        $model = new Booking();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {

             $book = $this->findModel($model->id);
             $message = "ระบบได้บันทึกการจอง ".$book->room->room_title."\r\n เรื่อง :: ".$book->title."  เรียบร้อยแล้ว\r\n วันที่ ".$book->start_meet."\r\n ถึงวันที่ ".$book->end_meet." \r\n ผู้จอง :".$book->booking;
             $res = $this->notify_messagex($message);

             Yii::$app->session->setFlash(\dominus77\sweetalert2\Alert::TYPE_SUCCESS, [
            [
                'title' => 'การแจ้งเตือน',
                'text' => 'ระบบได้บันทึกทึกการจอง '.$book->room->room_title.' เรียบร้อยแล้ว',
                'confirmButtonText' => 'ตกลง',
            ]

         ]);
             return $this->refresh();
            //return $this->redirect(['view', 'id' => $model->id]);
        }
        
        return $this->render('booking', [
            'model' => $model,
        ]);
    }
        protected function findModel($id)
    {
        if (($model = Booking::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }


            public function actionCurl()
    {       
            $message = 'test line noti';

            $res = $this->notify_messagex($message);

    }
        public function notify_messagex($message) {
        $line_api = 'https://notify-api.line.me/api/notify';
        //$line_token = '2gFeII7MljzFBWy8hRqSmiywvZBIYHEa4oLGAN7Ei2q'; //DLT: ระบบรถทดสอบ
       $line_token = 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz'; //IMplement Line Token
        $queryData = array('message' => $message);
        $queryData = http_build_query($queryData, '', '&');
        $headerOptions = array('http' => array('method' => 'POST', 'header' => "Content-Type: application/x-www-form-urlencoded\r\n" . "Authorization: Bearer " . $line_token . "\r\n" . "Content-Length: " . strlen($queryData) . "\r\n", 'content' => $queryData));
        $context = stream_context_create($headerOptions);
        $result = file_get_contents($line_api, FALSE, $context);
        $res = json_decode($result);
        return $res;
    }


}
