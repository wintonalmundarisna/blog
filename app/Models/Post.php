<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    // protected $fillable = ['title', 'excerpt', 'body']; //Yang boleh diisi

    protected $guarded = ['id']; //Ini aja yang gaboleh diisi, sisanya boleh

    //  ! Ini relasi antar tabel
    public function category() {
        return $this->belongsTo(Category::class);
        // Satu postingan hanya dimiliki satu kategori
        // Cara cek udah terleasi dengan benar atau belum, masuk tinker, lalu $post->category 
        // Kalo udah bener maka akan tampil sesuai
    }

    public function author() {
        return $this->belongsTo(User::class, 'user_id');
    }
}