<?php
// src/Model/Entity/User.php
namespace App\Model\Entity;
use Cake\Auth\DefaultPasswordHasher;
use Cake\ORM\Entity;

class User extends Entity
{
    /*protected $_accessible = [
        '*' => true,
        'id' => true,
        'slug' => true,
    ];
    // Add this method*/
    protected function _setPassword($value)
    {
        if (strlen($value)) {
            $hasher = new DefaultPasswordHasher();

            return $hasher->hash($value);
        }
    }
}