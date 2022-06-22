<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "builder".
 *
 * @property int $id
 * @property string|null $b_code
 * @property string|null $b_desc
 * @property string|null $b_off_desc
 */
class Builder extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'builder';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['b_code'], 'string', 'max' => 10],
            [['b_desc', 'b_off_desc'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'b_code' => 'B Code',
            'b_desc' => 'B Desc',
            'b_off_desc' => 'B Off Desc',
        ];
    }
}
