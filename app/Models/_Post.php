<?php

namespace App\Models;



class Post
{
    private static $blog_posts =  [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "vava alamsyah",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum vitae eaque doloremque, nesciunt a exercitationem optio illo ad commodi similique eligendi fugit aliquam delectus saepe blanditiis ut odio repudiandae rem assumenda. Non fuga, nemo molestias placeat dolores modi dolorum saepe doloribus enim reprehenderit quidem quisquam. A nihil, eveniet corrupti sint perspiciatis ipsum, nam accusamus exercitationem vel quisquam in reiciendis. Officiis quis dolores sed fugit iure possimus officia natus at, reiciendis qui eius illum harum exercitationem aut? Unde ut eveniet dolorem."
        ],
        [
            "title" => "Judul Post kedua",
            "slug" => "judul-post-kedua",
            "author" => "ahmad muklis",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum vitae eaque doloremque, nesciunt a exercitationem optio illo ad commodi similique eligendi fugit aliquam delectus saepe blanditiis ut odio repudiandae rem assumenda. Non fuga, nemo molestias placeat dolores modi dolorum saepe doloribus enim reprehenderit quidem quisquam. A nihil, eveniet corrupti sint perspiciatis ipsum, nam accusamus exercitationem vel quisquam in reiciendis. Officiis quis dolores sed fugit iure possimus officia natus at, reiciendis qui eius illum harum exercitationem aut? Unde ut eveniet dolorem."
        ],

        ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){

            $posts = static::all();

            // $post = [];

            // foreach($posts as $p){
            //     if($p["slug"] === $slug){
            //         $post = $p;
            //     }
            // }
    return $posts->firstWhere('slug', $slug);
    }

}
