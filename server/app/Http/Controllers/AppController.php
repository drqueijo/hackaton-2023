<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Student;
use Illuminate\Http\Request;

class AppController extends Controller
{
    public function login(String $ra)
    {

        $student = Student::where('ra', $ra)->first();

        if ($student) {

            return response()->json(['student_id' => $student->id, 'message' => 'RA permitido']);
        }
        return response()->json(['student_id' => false, 'message' => 'RA não cadastrado']);
    }


    public function getBooks()
    {
        $books = Book::select('id', 'title', 'subtitle')->get();
        return response()->json($books);
    }

    public function getBookDetails(string $id)
    {
        $books = Book::with('author', 'publisher')->findOrFail($id);
        return response()->json($books);
    }

    public function getBooksReservationByUserId(string $id)
    {
        $books = Book::whereHas('reservation', function ($query) use ($id) {
            $query->where('student_id', $id);
        })->get();

        return response()->json($books);
    }
}
