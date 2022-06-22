<?php

namespace app\models;
use app\models\Upload;
use yii\helpers\Url;
use Yii;

/**
 * This is the model class for table "room".
 *
 * @property int $id
 * @property int|null $builder_id
 * @property string|null $room_title
 * @property string|null $room_detail
 * @property string|null $room_img
 * @property string|null $room_option
 */
class Room extends \yii\db\ActiveRecord
{
    const UPLOAD_FOLDER='photo_room';

    public static function tableName()
    {
        return 'room';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['builder_id'], 'string'],
            [['ref'], 'string', 'max' => 50],
            [['room_title', 'room_detail', 'room_img','room_color', 'room_option'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ref' => 'เลข fk กับ upload ใช้กับ upload ajax',
            'builder_id' => 'อาคาร',
            'room_title' => 'ห้องประชุม',
            'room_detail' => 'รายละเอียด',
            'room_img' => 'Room Img',
            'room_option' => 'Room Option',
            'room_color'=>'สี  label'
        ];
    }
    public function getBuilder() {
        return $this->hasOne(Builder::className(), ['b_code' => 'builder_id']);
    }

    public static function getUploadPath(){
        return Yii::getAlias('@webroot').'/'.self::UPLOAD_FOLDER.'/';
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
