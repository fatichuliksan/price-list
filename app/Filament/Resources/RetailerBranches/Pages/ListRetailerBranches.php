<?php

namespace App\Filament\Resources\RetailerBranches\Pages;

use App\Filament\Resources\RetailerBranches\RetailerBranchResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListRetailerBranches extends ListRecords
{
    protected static string $resource = RetailerBranchResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
