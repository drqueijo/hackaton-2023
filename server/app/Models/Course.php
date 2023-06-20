<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Course extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'coordinator', 'duration'];

    public function student(): HasMany
    {
        return $this->hasMany(Student::class);
    }
}
