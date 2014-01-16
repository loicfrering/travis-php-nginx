<?php
class HelloTest extends PHPUnit_Framework_TestCase
{
    public function testHello()
    {
        $html = file_get_contents('http://localhost/index.php?name=Travis');
        $this->assertContains('Hello Travis!', $html);
    }
}
