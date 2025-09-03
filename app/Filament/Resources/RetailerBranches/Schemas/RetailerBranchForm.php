<?php

namespace App\Filament\Resources\RetailerBranches\Schemas;

use App\Models\Retailer;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;

class RetailerBranchForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('retailer_id')
                    ->options(Retailer::all()->pluck('name', 'id'))
                    ->relationship('retailer', 'name')
                    ->required(),
                TextInput::make('name')
                    ->required(),
                Textarea::make('address')
                    ->required()
                    ->columnSpanFull(),
                TextInput::make('latitude'),
                TextInput::make('longitude'),
                TextInput::make('phone')
                    ->tel(),
            ]);
    }
}
