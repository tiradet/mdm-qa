<?php

namespace app\models;
use app\models\Room;
use app\models\Builder;
use app\models\Uploads;
use Yii;
use yii\helpers\Url;

/**
 * This is the model class for table "booking".
 *
 * @property int $id
 * @property int $room_ref
 * @property string $title
 * @property string $content
 * @property string $start_meet
 * @property string $end_meet
 * @property string $booking
 * @property string|null $approve
 * @property string|null $create_at
 * @property string|null $update_at
 * @property int|null $create_by
 * @property int|null $update_by
 */
class Booking extends \yii\db\ActiveRecord
{
    const UPLOAD_FOLDER='photo_room';

    public static function tableName()
    {
        return 'booking';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['builder_ref','room_ref', 'title', 'content', 'start_meet', 'end_meet', 'booking'], 'required'],
            [['room_ref', 'create_by', 'update_by'], 'integer'],
            [['start_meet', 'end_meet', 'create_at', 'update_at'], 'safe'],
            [['title'], 'string', 'max' => 100],
            [['booking'], 'string', 'max' => 255],
            [['approve'], 'string', 'max' => 1],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'builder_ref'=>'อาคาร',
            'room_ref' => 'ห้องประชุม',
            'title' => 'หัวข้อการประชุม',
            'content' => 'รายละเอียด แบบย่อ',
            'start_meet' => 'เริ่ม',
            'end_meet' => 'สิ้นสุด',
            'booking' => 'ผู้ที่ดำเนินการจอง',
            'approve' => 'การอนุมัติ',
            'create_at' => 'Create At',
            'update_at' => 'Update At',
            'create_by' => 'Create By',
            'update_by' => 'Update By',
        ];
    }
    public function getStatus() {
        switch ($this->approve) {
            case 'A':
                return 'รออนุมัติ ';
            case 'Y':
                return 'อนุมัติแล้ว';
            case 'N':
                return 'ไม่อนุมัติ';

        }

        return NULL;
    }
    public function getBuilder() {
        return $this->hasOne(Builder::className(), ['b_code' => 'builder_ref']);
    }
    public function getRoom() {
        return $this->hasOne(Room::className(), ['id' => 'room_ref']);
    }
    public static function getUploadUrl(){
        return Url::base(true).'/'.self::UPLOAD_FOLDER.'/';
    }

    public function getThumbnails($ref,$event_name){
        $uploadFiles   = Uploads::find()->where(['ref'=>$ref])->all();
        $preview = [];
        foreach ($uploadFiles as $file) {
            $preview[] = [
                'url'=>self::getUploadUrl(true).$ref.'/'.$file->real_filename,
                'src'=>self::getUploadUrl(true).$ref.'/thumbnail/'.$file->real_filename,
                'options' => ['title' => $event_name]
            ];
        }
        return $preview;
    }

}
