#include "performcalculation.h"

PerformCalculation::PerformCalculation()
{

}

static bool PerformCalculation::isGivenNumberBiggerThan100(double number)
{
    if(number > 100.0)
        return true;
    else
        return false;
}
