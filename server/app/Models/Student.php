<?php

namespace App\Models;

use App\Models\Student as ModelsStudent;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [ 'course',];

    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
