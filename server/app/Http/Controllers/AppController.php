<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class AppController extends Controller
{
    public function login(Request $request)
    {
        $validatedData = $request->validate([
            'ra' => 'required|exists:students,ra',
        ]);

        return response()->json(['message' => 'RA permitido']);
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
}
