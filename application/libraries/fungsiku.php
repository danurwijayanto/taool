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

  	/**
 * CIDR.php
 *
 * Utility Functions for IPv4 ip addresses.
 *
 * @author Jonavon Wilcox <jowilcox@vt.edu>
 * @version Sat Jun  6 21:26:48 EDT 2009
 * @copyright Copyright (c) 2009 Jonavon Wilcox
 */
 /**
  * class CIDR.
  * Holds static functions for ip address manipulation.
  */

	/**
	 * method CIDRtoMask
	 * Return a netmask string if given an integer between 0 and 32. I am 
	 * not sure how this works on 64 bit machines.
	 * Usage:
	 *     CIDR::CIDRtoMask(22);
	 * Result:
	 *     string(13) "255.255.252.0"
	 * @param $int int Between 0 and 32.
	 * @access public
	 * @static
	 * @return String Netmask ip address
	 */
	// function CIDRtoMask($int) {
	// 	return long2ip(-1 << (32 - (int)$int));
	// }
 
	/**
	 * method countSetBits.
	 * Return the number of bits that are set in an integer.
	 * Usage:
	 *     CIDR::countSetBits(ip2long('255.255.252.0'));
	 * Result:
	 *     int(22)
	 * @param $int int a number
	 * @access public
	 * @static
	 * @see http://stackoverflow.com/questions/109023/best-algorithm-to-co\
	 * unt-the-number-of-set-bits-in-a-32-bit-integer
	 * @return int number of bits set.
	 */
	function countSetbits($int){
		$int = $int & 0xFFFFFFFF;
		$int = ( $int & 0x55555555 ) + ( ( $int >> 1 ) & 0x55555555 ); 
		$int = ( $int & 0x33333333 ) + ( ( $int >> 2 ) & 0x33333333 );
		$int = ( $int & 0x0F0F0F0F ) + ( ( $int >> 4 ) & 0x0F0F0F0F );
		$int = ( $int & 0x00FF00FF ) + ( ( $int >> 8 ) & 0x00FF00FF );
		$int = ( $int & 0x0000FFFF ) + ( ( $int >>16 ) & 0x0000FFFF );
		$int = $int & 0x0000003F;
		return $int;
	}
 
	/**
	 * method validNetMask.
	 * Determine if a string is a valid netmask.
	 * Usage:
	 *     CIDR::validNetMask('255.255.252.0');
	 *     CIDR::validNetMask('127.0.0.1');
	 * Result:
	 *     bool(true)
	 *     bool(false)
	 * @param $netmask String a 1pv4 formatted ip address.
	 * @see http://www.actionsnip.com/snippets/tomo_atlacatl/calculate-if-\
	 * a-netmask-is-valid--as2-
	 * @access public
	 * @static
	 * return bool True if a valid netmask.
	 */
	function validNetMask($netmask){
		$netmask = ip2long($netmask);
		$neg = ((~(int)$netmask) & 0xFFFFFFFF);
		return (($neg + 1) & $neg) === 0;
	}
 
	/**
	 * method maskToCIDR.
	 * Return a CIDR block number when given a valid netmask.
	 * Usage:
	 *     CIDR::maskToCIDR('255.255.252.0');
	 * Result:
	 *     int(22)
	 * @param $netmask String a 1pv4 formatted ip address.
	 * @access public
	 * @static
	 * @return int CIDR number.
	 */
	function maskToCIDR($netmask){
		if($this->validNetMask($netmask)){
			return $this->countSetBits(ip2long($netmask));
		}
		else {
			throw new Exception('Invalid Netmask');
		}
	}
}

/* End of file Someclass.php */