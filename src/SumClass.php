<?php
declare(strict_types=1);

namespace CircleCIPHP;

class SumClass
{

    public function method(float $numberToSum, float $anotherNumberToSum): float
    {

        $totalSum = $numberToSum + $anotherNumberToSum;

        return $totalSum;
    }
}
