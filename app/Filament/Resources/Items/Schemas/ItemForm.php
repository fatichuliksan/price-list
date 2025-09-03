<?php

namespace App\Filament\Resources\Items\Schemas;

use App\Models\Category;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class ItemForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('category_id')
                    ->label('Category')
                    // ->options(Category::all()->pluck('name', 'id'))
                    ->relationship('category', 'name'),

                TextInput::make('name')
                    ->required(),
                    Textarea::make('description'),
                    FileUpload::make('image')->image()->directory('item_images'),
            ]);
    }
}
