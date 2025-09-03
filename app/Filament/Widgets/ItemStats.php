<?php

namespace App\Filament\Widgets;

use App\Models\Category;
use App\Models\Item;
use App\Models\Retailer;
use Filament\Widgets\StatsOverviewWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class ItemStats extends StatsOverviewWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Total Item', Item::count())
                ->description('Jumlah semua item')
                ->descriptionIcon('heroicon-m-cube')
                ->color('success'),
            Stat::make('Total Retailer', Retailer::count())
                ->description('Jumlah semua retailer')
                ->descriptionIcon('heroicon-m-cube')
                ->color('success'),
                Stat::make('Total Category', Category::count())
                ->description('Jumlah semua kategori')
                ->descriptionIcon('heroicon-m-cube')
                ->color('success'),
        ];
    }
}
