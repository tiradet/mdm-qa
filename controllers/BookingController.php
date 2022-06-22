<?php

namespace app\controllers;

use app\models\LineToken;
use app\models\Room;
use Yii;
use yii\web\Response;
use app\models\Booking;
use app\models\BookingSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\Json;
use yii\helpers\ArrayHelper;
/**
 * BookingController implements the CRUD actions for Booking model.
 */
class BookingController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Booking models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new BookingSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->sort = [
            'defaultOrder' => [
                'start_meet' => SORT_DESC,
            ]];
        if(Yii::$app->request->post('hasEditable'))
        {
            $_id=$_POST['editableKey'];
            $model = $this->findModel($_id);
            $post = [];
            $posted = current($_POST['Booking']);
            $post['approve'] = $posted;
            if ($model->load($post)) {
                $model->save();
                if (isset($posted['Booking']))
                {
                    $output =  $model->approve;
                }
                $out = Json::encode(['output'=>$output, 'message'=>'']);
            }
            echo $out;
            return ;
        }
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionUpdateEditable() {
        if (Yii::$app->request->post('hasEditable')) {

            Yii::$app->response->format = Response::FORMAT_JSON;

            $model = $this->findModel(Yii::$app->request->post('editableKey'));

            $out = [
                'output'    => '',
                'message'   => '',
            ];
            $posted = current($_POST[$model->formName()]);
            $post[$model->formName()] = $posted;
            Yii::info('processed post:' . print_r($posted,true));

            if ($model->load($post)) {
                if (!$model->save()) {
                    $out = [
                        'output'    => '',
                        'message'   => $model->getFirstError(),
                    ];
                }
                Yii::info('editable returns:' . print_r($out,true));
                return $out;
            }
        }
    }

    /**
     * Displays a single Booking model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }
        public function actionViewAjax($id)
    {
        return $this->renderAjax('view-ajax', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Booking model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
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
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Booking model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $builder = ArrayHelper::map($this->getBuilder($model->builder_ref), 'id', 'name');
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
            'builder'=>$builder,
        ]);
    }

    /**
     * Deletes an existing Booking model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Booking model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Booking the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Booking::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionStatBetweenDate() {
        $model = new \app\models\Entryform();
        $model->scenario = \app\models\Entryform::SCENARIO_BYOFFICE;

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $query = Booking::find()->where(['between', 'start_meet', $model->START_DTE, $model->END_DTE]);
            $dataProvider = new ActiveDataProvider([
                'query' => $query,
                'pagination' => false,
            ]);
            return $this->render('stat-between-date-office', [
                'post' => 1,
                'model' => $model,
                'dataProvider' => $dataProvider,
            ]);
        } else {
            // either the page is initially displayed or there is some validation error
            return $this->render('stat-between-date', ['model' => $model]);
        }
    }

    public function actionGetBuilder() {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $out = [];
        if (isset($_POST['depdrop_parents'])) {
            $parents = $_POST['depdrop_parents'];
            if ($parents != null) {
                $check_code = $parents[0];
                $out = $this->getBuilder($check_code);
                return ['output'=>$out, 'selected'=>''];
            }
        }
        echo Json::encode(['output'=>'', 'selected'=>'']);
    }
    public function actionGetCheckat2() {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $out = [];
        if (isset($_POST['depdrop_parents'])) {
            $parents = $_POST['depdrop_parents'];
            if ($parents != null) {
                $check_code = $parents[0];
                $out = $this->getCheckcode2($check_code);
                return ['output'=>$out, 'selected'=>''];
            }
        }
        echo Json::encode(['output'=>'', 'selected'=>'']);
    }
    protected function getBuilder($check_code){
        $datas = Room::find()->where(['builder_id'=>$check_code])->all();
        return $this->MapData($datas,'id','room_title');
    }
    protected function getCheckcode2($check_code){
        $datas = OriDes::find()->where(['ORG'=>$check_code])->all();
        return $this->MapData($datas,'S_CODE','S_DESC');
    }

    // dropdown option ในการเลือกข้อมูลแล้วนำมา Map ข้อมูลแล้วคืนค่าไปที่ Depdrop
    protected function MapData($datas, $fieldId, $fieldName) {
        $obj = [];
        foreach ($datas as $key => $value) {
            array_push($obj, ['id' => $value->{$fieldId}, 'name' => $value->{$fieldName}]);
        }
        return $obj;
    }
    public function notify_messagex($message) {
        $model_line = LineToken::find() ->where(['status' => 1])->one();
        $line_api = 'https://notify-api.line.me/api/notify';
        //$line_token = '2gFeII7MljzFBWy8hRqSmiywvZBIYHEa4oLGAN7Ei2q'; //DLT: ระบบรถทดสอบ
       $line_token = $model_line->line_token; //IMplement Line Token
        $queryData = array('message' => $message);
        $queryData = http_build_query($queryData, '', '&');
        $headerOptions = array('http' => array('method' => 'POST', 'header' => "Content-Type: application/x-www-form-urlencoded\r\n" . "Authorization: Bearer " . $line_token . "\r\n" . "Content-Length: " . strlen($queryData) . "\r\n", 'content' => $queryData));
        $context = stream_context_create($headerOptions);
        $result = file_get_contents($line_api, FALSE, $context);
        $res = json_decode($result);
        return $res;
    }
}
