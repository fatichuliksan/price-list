<?php

namespace App\Filament\Resources\ItemUnits\Pages;

use App\Filament\Resources\ItemUnits\ItemUnitResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditItemUnit extends EditRecord
{
    protected static string $resource = ItemUnitResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
