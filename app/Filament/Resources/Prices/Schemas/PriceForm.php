<?php

namespace App\Filament\Resources\Prices\Schemas;

use App\Models\ItemUnit;
use App\Models\RetailerBranch;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;
use Filament\Support\RawJs;

class PriceForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('item_unit_id')
                    ->label('Item - Unit - UPC')
                    ->options(
                        ItemUnit::with(['item', 'unit'])
                            ->get()
                            ->mapWithKeys(fn($iu) => [
                                $iu->id => $iu->item->name
                                    . ' - ' . $iu->unit->name
                                    . ' - ' . $iu->universal_product_code
                            ])
                    )->searchable()
                    ->required(),
                Select::make('retailer_branch_id')
                    ->label('Branch - Retailer')
                    ->options(
                        RetailerBranch::with(['retailer'])
                            ->get()
                            ->mapWithKeys(function ($rb) {
                                return [
                                    $rb->id => $rb->name . ' - ' . $rb->retailer->name,
                                ];
                            })
                    )
                    ->searchable()
                    ->required(),
                DatePicker::make('date')
                    ->default(now())
                    ->required(),
                TextInput::make('price')
                    ->required()
                    ->numeric()
                    ->reactive() // agar perubahan langsung trigger
                    ->afterStateUpdated(function ($state, callable $set, callable $get) {
                        $discount = str_replace(',', '', $get('discount') ?? 0);
                        $set('sell_price', max(0, $state - $discount));
                    }),
                TextInput::make('discount')
                    ->required()
                    ->numeric()
                    ->reactive() // agar perubahan langsung trigger
                    ->afterStateUpdated(function ($state, callable $set, callable $get) {
                        $subtotal = str_replace(',', '', $get('price')) ?? 0;
                        $set('sell_price', max(0, $subtotal - $state));
                    }),
                TextInput::make('sell_price')
                    ->required()
                    ->readOnly()
                    ->numeric(),
            ]);
    }
}
