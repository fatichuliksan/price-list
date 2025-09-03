<?php

namespace App\Filament\Resources\RetailerBranches;

use App\Filament\Resources\RetailerBranches\Pages\CreateRetailerBranch;
use App\Filament\Resources\RetailerBranches\Pages\EditRetailerBranch;
use App\Filament\Resources\RetailerBranches\Pages\ListRetailerBranches;
use App\Filament\Resources\RetailerBranches\Schemas\RetailerBranchForm;
use App\Filament\Resources\RetailerBranches\Tables\RetailerBranchesTable;
use App\Models\RetailerBranch;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class RetailerBranchResource extends Resource
{
    protected static ?string $model = RetailerBranch::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'Retailer Branch';

    public static function form(Schema $schema): Schema
    {
        return RetailerBranchForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return RetailerBranchesTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListRetailerBranches::route('/'),
            'create' => CreateRetailerBranch::route('/create'),
            'edit' => EditRetailerBranch::route('/{record}/edit'),
        ];
    }
}
