
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Operation extends CI_Controller {
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */

	public function index(){
		$this->load->view('admin/isi/login_admin');
	}

	//Fungsi untuk update berkala rrd database
	public function update_rrd(){
		$data_rrd = $this->snmp_model->get_rrd_details();
		// echo getcwd();
		foreach ($data_rrd as $data) {
			$in = exec('/usr/local/bin/snmpget -v 1 -c public -Oqv '.$data['ip_address'].' IF-MIB::ifInOctets.'.$data['ip_addressindex'].'');
	  		$out = exec('/usr/local/bin/snmpget -v 1 -c public -Oqv '.$data['ip_address'].' IF-MIB::ifOutOctets.'.$data['ip_addressindex'].'');
	  		// echo $in." || ".$out." || ".time()."<br>" ;
	  		$ret = rrd_update("etc/rrdtools/rra/".$data['id_rrd'].".rrd", array("N:".$in.":".$out));
		    if ( $ret == 0 )
			{
			    $err = rrd_error();
			    print_r($now."ERROR occurred:".$err) ;
			}
			// print_r($in);
		}
	}

	//Fungsi ajax auto refresh
	public function uptime(){
		$sess = $this->session->userdata('sess');
		if ($sess['os']=="mikrotik") {
			$data = array(
				//'nama_perangkat' => snmpget("182.255.0.34", "public", ".1.3.6.1.2.1.1.1.0"),
				'uptime' => snmpget($sess['ip'], "public", ".1.3.6.1.2.1.1.3.0"),
				'usedmem' => snmpget($sess['ip'], "public", ".1.3.6.1.2.1.25.2.3.1.6.65536"),
				'cpuload' => snmpget($sess['ip'], "public", ".1.3.6.1.2.1.25.3.3.1.2.1")
			);
		}else{
			$data = array(
				//'nama_perangkat' => snmpget("182.255.0.34", "public", ".1.3.6.1.2.1.1.1.0"),
				'uptime' => snmpget($sess['ip'], "public", ".1.3.6.1.2.1.1.3.0"),
				'usedmem' => snmpget($sess['ip'], "public", ".1.3.6.1.4.1.2021.4.6.0"),
				'cpuload' => snmpget($sess['ip'], "public", ".1.3.6.1.4.1.2021.11.9.0")
			);
		}
		
		echo json_encode($data);
	}
	//End Fungsi Ajax auto refresh
	
}
/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */