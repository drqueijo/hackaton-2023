<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reserve extends Model
{
    use HasFactory;

    protected $fillable = [ 'student', 'book',];

    public function student()
    {
        return $this->hasMany(Student::class);
    }

    public function book()
    {
        return $this->hasMany(Book::class);
    }
}
