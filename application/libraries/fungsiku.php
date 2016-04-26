<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Fungsiku {

    public function some_function()
    {
    }

    public function ping($host){
	    exec("ping -c 1 " . $host, $output, $result);
	    if ($result == 0)
	      return "Up";
	    else
	      return "Down";
  	}
}

/* End of file Someclass.php */