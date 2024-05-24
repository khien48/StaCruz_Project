<?php

// app/Models/Section.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'SectionName',
        'SectionGradeLvl',
        'SectionAd',
        'SectionRoomNo',
    ];

    public function getSectionList(){
        return $this->all();
    }

    public function deleteSectionList($id){
        $section = $this->find($id);
        $section->delete();

    }
}
