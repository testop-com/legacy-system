<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

    public function run()
    {
       //Model::unguard();
      //$this->call(AdminUserTableSeeder::class);    
      //$this->call(OtherTableSeeder::class);    
      //$this->call(PermissionsTableSeeder::class);
      //$this->call(RolesTableSeeder::class);
      //$this->call(PermissionRoleTableSeeder::class);
      //$this->call(RoleUserTableSeeder::class);
      //$this->call(RoleUserTableSeeder::class);
      $this->call(AdminUserTableSeeder::class);  
    
    }
}
