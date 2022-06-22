<?php

namespace app\controllers;


use Yii;
use yii\db\Query;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\Booking;
use app\models\BookingSearch;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {

     if (!Yii::$app->user->isGuest) {

               $this->layout='main';

        }else{
            $this->layout='guest';
        }
        
        return $this->render('index', [

        ]);
    }
    public function actionAdmin(){
        $searchModel = new modelsMasterDeviceSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        //$dataProvider->query->andWhere(['off_loc_code'=>Yii::$app->user->identity->provinceCode]);
        $dataProvider->sort = [
            'defaultOrder' => [
                'create_at' => SORT_DESC,
            ]
        ];
        $off_loc_code = Yii::$app->user->identity->provinceCode;
        $dbCommand = Yii::$app->db->createCommand("
               SELECT COUNT(*) as device,
            setting_device.`name`
            FROM
            master_device
            INNER JOIN setting_device ON setting_device.`code` = master_device.device_type
            GROUP BY master_device.device_type
        ");
        $data = $dbCommand->queryAll();

        $countNotify = MasterNotify::find()->where(['status' => 0])->count();
        $countDevice = MasterDevice::find()->count();
        $countPending = MasterNotify::find()->count();
        return $this->render('admin', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'countNotify'=>$countNotify,
            'countDevice'=>$countDevice,
            'countPending'=>$countPending,
            'data'=>$data

        ]);
    }

    public function actionSupport(){
        $searchModel = new modelsMasterDeviceSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->query->andWhere(['off_loc_code'=>Yii::$app->user->identity->provinceCode]);
        $dataProvider->sort = [
            'defaultOrder' => [
                'create_at' => SORT_DESC,
            ]
        ];
        $off_loc_code = Yii::$app->user->identity->provinceCode;
        $dbCommand = Yii::$app->db->createCommand("
               SELECT COUNT(*) as device,
            setting_device.`name`
            FROM
            master_device
            INNER JOIN setting_device ON setting_device.`code` = master_device.device_type
            GROUP BY master_device.device_type
        ");
        $data = $dbCommand->queryAll();

        $countNotify = MasterNotify::find()->where(['status' => 0])->count();
        $countDevice = MasterDevice::find()->count();
        $countPending = MasterNotify::find()->count();
        return $this->render('support', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'countNotify'=>$countNotify,
            'countDevice'=>$countDevice,
            'countPending'=>$countPending,
            'data'=>$data

        ]);
    }
    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        $this->layout='loginimg';
        if (!Yii::$app->user->isGuest) {

                return $this->goHome();

        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }
    public function actionLoginImg()
    {
        $this->layout='loginimg';
        if (!Yii::$app->user->isGuest) {

            return $this->goHome();

        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login-img', [
            'model' => $model,
        ]);
    }
    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->getSession()->setFlash('', [
                'text' => 'บันทึกข้อมูลเรียบร้อยแล้ว',
                'title' => 'การแจ้งเตือน',
                //'type' => 'primary',
                'timer' => 3000,
                'confirmButtonText' => "ตกลง",
                'showConfirmButton' => false
            ]);

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {

        return $this->render('about');
    }
    public function actionViewEvents($start = NULL, $end = NULL, $_ = NULL) {

        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;

        //$eventList = Events::find()->where(['is_status'=> 0])->all();
        $eventList = Booking::find()->all();

        $events = [];

        foreach ($eventList as $event) {
            $Event = new \yii2fullcalendar\models\Event();
            $Event->id = $event->id;
            $Event->title = $event->title;
             //$Event->description = '';
             $Event->start = $event->start_meet;
             $Event->end = $event->end_meet;
            $Event->color =$event->room->room_color;
             $Event->textColor = '#FFF';
            $Event->borderColor = '#000';
            //$Event->event_type = (($event->event_type == 1) ? 'Holiday' : (($event->event_type == 2) ? 'Important Notice' : (($event->event_type == 3) ? 'Meeting' : 'Messages')));
           // $Event->allDay = ($event->event_all_day == 1) ? true : false;
            // $Event->url = $event->event_url;
            $events[] = $Event;
        }
        return $events;
    }
    
        public function actionViewEvent($event_id) {
            $model = Booking::find()->where(['id'=>$event_id])->one();
        return $this->renderAjax('view', [
                    'model' => $model,
        ]);
    }
}
