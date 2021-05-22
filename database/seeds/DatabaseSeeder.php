<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        DB::table('workouts')->insert([[
            'workout_name' => "Zumba"
        ],[
            'workout_name' => "Jazzercise"
        ],[
            'workout_name' => "Ballroom Dancing"
        ],[
            'workout_name' => "Belly Dancing"
        ],[
            'workout_name' => "Warm Up"
        ],[
            'workout_name' => "Bolly Soul"
        ],[
            'workout_name' => "Stretching"
        ],[
            'workout_name' => "Push-up"
        ],[
            'workout_name' => "Contralateral Limb Raises"
        ],[
            'workout_name' => "Bent Knee Push-up"
        ],[
            'workout_name' => "Downward-facing Dog"
        ],[
            'workout_name' => "Bent-Knee Sit-up / Crunches"
        ],[
            'workout_name' => "Push-up with Single-leg Raise"
        ],[
            'workout_name' => "Front Plank"
        ],[
            'workout_name' => "Side Plank with Bent Knee"
        ],[
            'workout_name' => "Supine Reverse Crunches"
        ],[
            'workout_name' => "Cobra"
        ]]);
    }
}
