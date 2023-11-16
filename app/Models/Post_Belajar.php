<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\Model;

// class Post extends Model
class Post
{
    private static $blog_posts = [
        [
            'title' => 'Judul Posts Pertama',
            'slug' => 'judul-post-pertama',
            'author' => 'Winton Almundarisna',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur eos, ab doloribus, vel unde voluptates tempora voluptatem, voluptate voluptas ipsum quibusdam? Mollitia quidem atque saepe libero explicabo beatae repudiandae eum pariatur voluptatem nam reprehenderit omnis quos laborum illo eaque, laboriosam itaque quod, repellendus velit magnam? Qui quod, non dignissimos blanditiis ipsa sapiente veniam natus enim excepturi officiis, tenetur ullam labore cum exercitationem et, error unde. Reiciendis distinctio obcaecati tempore autem, fuga esse sapiente non voluptate debitis pariatur suscipit corrupti consequatur!'
        ],
        [
            'title' => 'Judul Posts Kedua',
            'slug' => 'judul-post-kedua',
            'author' => 'Sandi Wanto',
            'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatibus, perspiciatis ad rerum, quos vel autem eos aut culpa similique, facilis minus blanditiis hic praesentium voluptates optio quia! Ducimus excepturi iusto possimus architecto minus. Perspiciatis ducimus mollitia quibusdam eius quidem maiores quas iure et ad quia impedit repudiandae nihil nam, atque vitae ullam cum odit minus, eum saepe molestiae inventore. Officiis sapiente dicta nam laudantium nulla ad odit doloribus sit cupiditate! Voluptatem similique libero quo neque tempora nihil in distinctio illo temporibus expedita doloribus harum hic provident dolor reprehenderit culpa laborum veniam minima quasi, ipsa accusamus odio. Facilis ex expedita rerum!'
        ]
    ];

    public static function all()
    {
        // return self::$blog_posts; //Buat cara yang pertama
        return collect(self::$blog_posts);
    }

    public static function find($slug) //Ambil slug dari web
    {
        // $posts = self::$blog_posts; //Buat var posts dan masukkan isi $blog_posts kedalamnya

        // $post = []; //Buat baru untuk nampung
        // foreach ($posts as $p) { //Ketika posts sebagai p, maka
        //     if ($p['slug'] === $slug) { //Jika slug dari p ada dan sama dengan $slug yang dikirim url, maka
        //         $post = $p; //Masukkan hasilnya kedalam $post
        //     }
        // }

        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
