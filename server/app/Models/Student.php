<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = ['ra', 'name', 'address', 'city', 'uf', 'phone', 'course_id'];

    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
