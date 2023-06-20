<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    //lista os cursos cadastrados
    public function index()
    {
        $courses = Course::all();
        return response()->json($courses);
    }

    //Serve como se fosse uma especie de "Botão de Detalhes"
    public function show($id)
    {
        $course = Course::findOrFail($id);
        return response()->json($course);
    }

    //Complemento do crud
    public function store(Request $request) //Armazena
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'duration' => 'required',
            'level' => 'required',
        ]);

        $course = Course::create($validatedData);
        return response()->json($course, 201);
    }

    public function update(Request $request, $id)
    {
        $course = Course::findOrFail($id);

        $validatedData = $request->validate([
            'name' => 'required',
            'duration' => 'required',
            'level' => 'required',
        ]);

        $course->update($validatedData);
        return response()->json($course);
    }

    public function destroy($id)
    {
        $course = Course::findOrFail($id);
        $course->delete();
        return response()->json(['message' => 'Curso deletado com sucesso']);
    }
}
