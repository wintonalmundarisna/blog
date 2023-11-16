<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        User::factory(3)->create(); //Disini cuma nge seed, pengaturannya ada di  UserFactory
        
        Category::create([
            'name' => 'Programming',
            'slug' => 'programming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);
        
        Post::factory(20)->create();

        
        // User::create([
        //     'name' => 'Winton Almundarisna',
        //     'email' => 'wintonalmundarisna@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // User::create([
        //     'name' => 'Agus Nurnyoto',
        //     'email' => 'nurnyoto@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Porro odit voluptate minima!</p>',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse nihil doloribus aspernatur quis itaque vitae et tempora! Eos, quasi voluptas?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Porro odit voluptate minima!</p>',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse nihil doloribus aspernatur quis itaque vitae et tempora! Eos, quasi voluptas?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Porro odit voluptate minima!</p>',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse nihil doloribus aspernatur quis itaque vitae et tempora! Eos, quasi voluptas?</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
