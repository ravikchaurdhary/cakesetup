<?php
// src/Model/Table/UsersTable.php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\Validation\Validator;

class UsersTable extends Table
{
    public function initialize(array $config)
    {
        $this->addBehavior('Timestamp');
        $this->hasOne('UserRoles', [
                'bindingKey' => 'role_id',
                'foreignKey' => 'id'
            ]);
    }  
    public function validationDefault(Validator $validator)
    {
        $validator->notEmpty('firstname', 'Firstname must be required');
        $validator->notEmpty('lastname', 'Lastname must be required');
        $validator->notEmpty('email', 'Email must be required');
        $validator->notEmpty('password', 'Password must be required');
        $validator->notEmpty('confirm_password', 'Confirm Password must be required');
        $validator->notEmpty('agree_condition', 'Agree Condition must be required');
        return $validator;
    }
}