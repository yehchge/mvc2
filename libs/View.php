<?php

class View extends \stdClass
{
    public function __construct()
    {
        //echo 'this is the view';
    }

    public function render($name, $noInclude = false)
    {
        require 'views/'.$name.'.php';
    }
}
