<?php

namespace App\Filament\Widgets;

use App\Models\ItemUnit;
use App\Models\Price;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;

class PriceHistoryChart extends ChartWidget
{
    protected ?string $heading = 'Price History Chart';

    protected int | string | array $columnSpan = 'full';

    public ?int $itemUnitId = null; // filter SKU

    protected function getFilters(): ?array
    {
        return ItemUnit::with('item')
            ->get()
            ->mapWithKeys(fn ($iu) => [
                $iu->id => "{$iu->item->name} | {$iu->unit->name} | {$iu->universal_product_code}"
            ])
            ->toArray();
    }

    protected function getData(): array
    {
        $query = Price::query()
            ->select([
                DB::raw('DATE(date) as date'),
                DB::raw('AVG(sell_price) as avg_price'),
            ])
            ->when($this->filter, fn ($q, $filter) => $q->where('item_unit_id', $filter))
            ->groupBy('date')
            ->orderBy('date');

        $prices = $query->get();

        return [
            'datasets' => [
                [
                    'label' => 'Harga Rata-rata',
                    'data' => $prices->pluck('avg_price'),
                    'borderColor' => '#3b82f6',
                    'backgroundColor' => 'rgba(59,130,246,0.5)',
                ],
            ],
            'labels' => $prices->pluck('date'),
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }

    
}
