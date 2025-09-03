<?php

namespace App\Filament\Resources\RetailerBranches\Pages;

use App\Filament\Resources\RetailerBranches\RetailerBranchResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditRetailerBranch extends EditRecord
{
    protected static string $resource = RetailerBranchResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
