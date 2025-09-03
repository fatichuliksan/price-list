<?php

namespace App\Filament\Resources\ItemUnits\Schemas;

use App\Models\Item;
use App\Models\Unit;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class ItemUnitForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('item_id')
                    ->options(Item::all()->pluck('name', 'id'))
                    ->relationship('item', 'name')
                    ->required(),
                Select::make('unit_id')
                    ->options(Unit::all()->pluck('name', 'id'))
                    ->relationship('unit','name')
                    ->required(),
                TextInput::make('universal_product_code')
                    ->required(),
            ]);
    }
}
