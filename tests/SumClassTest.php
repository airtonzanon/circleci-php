<?php 

use PHPUnit\Framework\TestCase;
use CircleCIPHP\SumClass;

class TestSumClass extends \PHPUnit_Framework_TestCase
{

  private $class;

  public function setUp()
  {
    $this->class = new SumClass();
  }

  public function testShouldSumNumbers()
  {
    $result = $this->class->method(5, 5);

    $this->assertEquals(10, $result);
  }

  public function testShouldExpectWrongNumber()
  {
      $result = $this->class->method(1, 5);

      $this->assertNotEquals(7, $result);
  }

}

