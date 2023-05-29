<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => 'renold herlandi',
            'username' => 'herlandigg',
            'email' => 'herlandi619@gmail.com',
            'password' => bcrypt('123456')
        ]);

        // User::create([
        //     'name' => 'Vava Alamsyah',
        //     'email' => 'vavalamsyah@gmail.com',
        //     'password' => bcrypt('123456')
        // ]);

        // User::create([
        //     'name' => 'Ahmad Muklis',
        //     'email' => 'muklisin@gmail.com',
        //     'password' => bcrypt('123456')
        // ]);
        
        User::factory(5)->create();

        Category::create([
            'name' => 'Programming',
            'slug' => 'programming',
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal',
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design',
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'Judul-Pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima cum adipisci fuga dolor quos et beatae.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima cum adipisci fuga dolor quos et beatae. Sequi, voluptatem illum. Error hic esse, molestiae dolores odit atque et corporis illum explicabo laudantium ut quis consequatur. Unde earum voluptas quibusdam illo est aperiam tempore iusto quam nam quaerat totam sunt itaque commodi, quis ut error aliquid! Praesentium repudiandae impedit, expedita beatae nisi ratione voluptates omnis animi magni non maxime perferendis recusandae error ex suscipit voluptas incidunt dolores? Magni nihil voluptatem dignissimos laboriosam modi voluptas, minima possimus eaque cum, eligendi minus consequuntur temporibus fugiat aliquam consequatur consectetur natus doloremque nemo delectus quo vitae.',
        //     'category_id' => 1 ,
        //     'user_id' => 1 
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'Judul-Kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima cum adipisci fuga dolor quos et beatae.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima cum adipisci fuga dolor quos et beatae. Sequi, voluptatem illum. Error hic esse, molestiae dolores odit atque et corporis illum explicabo laudantium ut quis consequatur. Unde earum voluptas quibusdam illo est aperiam tempore iusto quam nam quaerat totam sunt itaque commodi, quis ut error aliquid! Praesentium repudiandae impedit, expedita beatae nisi ratione voluptates omnis animi magni non maxime perferendis recusandae error ex suscipit voluptas incidunt dolores? Magni nihil voluptatem dignissimos laboriosam modi voluptas, minima possimus eaque cum, eligendi minus consequuntur temporibus fugiat aliquam consequatur consectetur natus doloremque nemo delectus quo vitae.',
        //     'category_id' => 1 ,
        //     'user_id' => 2 
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'Judul-Ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima cum adipisci fuga dolor quos et beatae.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima cum adipisci fuga dolor quos et beatae. Sequi, voluptatem illum. Error hic esse, molestiae dolores odit atque et corporis illum explicabo laudantium ut quis consequatur. Unde earum voluptas quibusdam illo est aperiam tempore iusto quam nam quaerat totam sunt itaque commodi, quis ut error aliquid! Praesentium repudiandae impedit, expedita beatae nisi ratione voluptates omnis animi magni non maxime perferendis recusandae error ex suscipit voluptas incidunt dolores? Magni nihil voluptatem dignissimos laboriosam modi voluptas, minima possimus eaque cum, eligendi minus consequuntur temporibus fugiat aliquam consequatur consectetur natus doloremque nemo delectus quo vitae.',
        //     'category_id' => 2 ,
        //     'user_id' => 1 
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'Judul-Keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima cum adipisci fuga dolor quos et beatae.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima cum adipisci fuga dolor quos et beatae. Sequi, voluptatem illum. Error hic esse, molestiae dolores odit atque et corporis illum explicabo laudantium ut quis consequatur. Unde earum voluptas quibusdam illo est aperiam tempore iusto quam nam quaerat totam sunt itaque commodi, quis ut error aliquid! Praesentium repudiandae impedit, expedita beatae nisi ratione voluptates omnis animi magni non maxime perferendis recusandae error ex suscipit voluptas incidunt dolores? Magni nihil voluptatem dignissimos laboriosam modi voluptas, minima possimus eaque cum, eligendi minus consequuntur temporibus fugiat aliquam consequatur consectetur natus doloremque nemo delectus quo vitae.',
        //     'category_id' => 2 ,
        //     'user_id' => 3 
        // ]);
    }
}
