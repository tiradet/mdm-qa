<?php

namespace app\models;

use Yii;
use yii\base\NotSupportedException;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;
use app\models\OffLocCode;


/**
 * User model
 *
 * @property integer $id
 * @property string $username
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property string $auth_key
 *  * @property string $org_code
 * @property integer $role
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property string $password write-only password
 */
class User extends ActiveRecord implements IdentityInterface {

    const STATUS_DELETED = 0;
    const STATUS_ACTIVE = 10;
    const ROLE_USER = 99;

    /**
     * @inheritdoc
     */
//    public static function getDb(){
//        return Yii::$app->get('db2');
//    }
    public static function tableName() {
        return '{{%user2}}';
    }

    /**
     * @inheritdoc
     */
    public function behaviors() {
        return [
            TimestampBehavior::className(),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['fullname', 'org_code', 'username','password_hash'], 'required'],
            ['status', 'default', 'value' => self::STATUS_ACTIVE],
            ['status', 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_DELETED]],
            ['role', 'default', 'value' => self::ROLE_USER],
            // ['role', 'in', 'range' => [self::ROLE_USER]],
            [['org_code', 'province_code'], 'string', 'max' => 5],
            [['fullname', 'position'], 'string', 'max' => 100],
            [['id_no'], 'string', 'max' => 20],
        ];
    }

    public function attributeLabels() {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'auth_key' => 'Auth Key',
            'password_hash' => 'Password Hash',
            'password_reset_token' => 'Password Reset Token',
            'email' => 'Email',
            'role' => 'Role',
            'status' => 'Status',
            'org_code' => 'สำนักงาน',
            'province_code' => 'รหัสจังหวัด',
            'fullname' => 'ชื่อ-สกุล',
            'id_no' => 'รหัสบัตรประจำตัวประชาชน',
            'position' => 'ตำแหน่ง',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    /**
     * @inheritdoc
     */
    public static function findIdentity($id) {
        return static::findOne(['id' => $id, 'status' => self::STATUS_ACTIVE]);
    }

    /**
     * @inheritdoc
     */
    public static function findIdentityByAccessToken($token, $type = null) {
        throw new NotSupportedException('"findIdentityByAccessToken" is not implemented.');
    }

    /**
     * Finds user by username
     *
     * @param string $username
     * @return static|null
     */
    public static function findByUsername($username) {
        return static::findOne(['username' => $username, 'status' => self::STATUS_ACTIVE]);
    }

    /**
     * Finds user by password reset token
     *
     * @param string $token password reset token
     * @return static|null
     */
    public static function findByPasswordResetToken($token) {
        if (!static::isPasswordResetTokenValid($token)) {
            return null;
        }

        return static::findOne([
            'password_reset_token' => $token,
            'status' => self::STATUS_ACTIVE,
        ]);
    }

    /**
     * Finds out if password reset token is valid
     *
     * @param string $token password reset token
     * @return boolean
     */
    public static function isPasswordResetTokenValid($token) {
        if (empty($token)) {
            return false;
        }
        $expire = Yii::$app->params['user.passwordResetTokenExpire'];
        $parts = explode('_', $token);
        $timestamp = (int) end($parts);
        return $timestamp + $expire >= time();
    }

    /**
     * @inheritdoc
     */
    public function getId() {
        return $this->getPrimaryKey();
    }

    public function getProvinceId() {
        return (string) $this->province_id;
    }

    public function getProvinceCode() {
        return $this->province_code;
    }
    public function getRoles() {
        return $this->role;
    }
    public function getOffLocCode() {
        return $this->province_code;
    }
    public function getOffName() {
        return $this->role;
    }
    public function getApprove() {
        switch ($this->status) {
            case 10 :
                return '<span class="label label-primary">อนุมัติแล้ว</span>';
            case 0 :
                return '<span class="label label-danger">ไม่อนุมัติ</span>';

        }

        return NULL;
    }

    public function getOrg(){
        return $this->hasOne(OffLocCode::className(),['OFF_LOC_CODE'=>'org_code']);
    }
    /**
     * @inheritdoc
     */
    public function getAuthKey() {
        return $this->auth_key;
    }

    /**
     * @inheritdoc
     */
    public function validateAuthKey($authKey) {
        return $this->getAuthKey() === $authKey;
    }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return boolean if password provided is valid for current user
     */
    public function validatePassword($password) {
        //return Yii::$app->security->validatePassword($password, $this->password_hash);
        return $this->password_hash === $password;
    }

    /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     */
    public function setPassword($password) {
        //$this->password_hash = Yii::$app->security->generatePasswordHash($password);
        $this->password_hash = $password;
    }

    /**
     * Generates "remember me" authentication key
     */
    public function generateAuthKey() {
        $this->auth_key = Yii::$app->security->generateRandomString();
    }

    /**
     * Generates new password reset token
     */
    public function generatePasswordResetToken() {
        $this->password_reset_token = Yii::$app->security->generateRandomString() . '_' . time();
    }

    /**
     * Removes password reset token
     */
    public function removePasswordResetToken() {
        $this->password_reset_token = null;
    }

    public function getDltOffice() {
        return $this->hasOne(Province::className(), ['PRV_CODE' => 'province_id']);
    }

//    public function getUser_role(){
//        return $this->hasOne(UserRole::className(), ['role_id' => 'role']);
//    }

}
