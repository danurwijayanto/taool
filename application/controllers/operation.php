
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

	public function kirim_email(){
		$this->load->library('email');
		$this->load->library('fungsiku');
		

		$semua_perangkat = $this->snmp_model->get_alldev();
		foreach ($semua_perangkat as $a) {
			# code...
			$status = $this->fungsiku->ping($a['ip_address']);
			// echo $a['status']." || ".$status."<br>";
			if ($a['status'] == $status){
				// echo "sama <br>";

			}else{
				$data = array(
						'id' => $a['id_perangkat'],
						'status_baru' => $status
					);
				// print_r($data['id']."<br>");
				// echo "beda <br>";
				$this->snmp_model->rubah_statperangkat($data);
			}
			
		}

		$data_perubahan = $this->snmp_model->cek_perubahan();

		if ($data_perubahan == 0){
			print_r("database_kosong");
		}else{
			$konten = " 	
					Terjadi Perubahan Status Perangkat Pada : <br><br>
					<table border='1'>
						<tr>
							<th>No</th>
							<th>Perangkat</th>
							<th>Status Lama</th>
							<th>Status Baru</th>
							<th>Waktu</th>
						</tr>
			";

			foreach ($data_perubahan as $a) {
				$konten .= '<tr>
								<td>'.$a['id_pa'].'</td>
								<td>'.$a['id_perangkat'].'</td>
								<td>'.$a['status_lama'].'</td>
								<td>'.$a['status_baru'].'</td>
								<td>'.$a['waktu'].'</td>
							</tr>';
			};
			$konten .= '</table>';


			$this->email->from('mobinity.fx@gmail.com', 'NMS FSM UNDIP');
			$this->email->to('mobinity.fx@gmail.com'); 
			$this->email->subject('Notifikasi Status Perangkat dan Interface ');
			$this->email->message($konten);	


			
			$berhasil = $this->email->send();

			$reportToLog = "\r\n[".date('j F Y, H:i:s')."]\t\t: ";
					
			if (!$berhasil) {
				$reportToLog .= "Mailer Error!";
				// $data['submitErrors'] = "Maaf, gagal mengirim email";
				print_r( "Maaf, gagal mengirim email");
			} else {
				$reportToLog .= "Message sent...";
				$dateChunk = date("Ymd-His");
				$reportToLog .= "\t[NMS FSM UNDIP] | [".$dateChunk.".html]";
					
				file_put_contents(APPPATH."/logs/email.log", $reportToLog, FILE_APPEND);
				// file_put_contents(APPPATH."/logs/emails/".$dateChunk.".html", $kontenEmail);
					
				// $data['submitSukses'] = "Password anda berhasil di-reset. <br>Silahkan periksa email Anda untuk melakukan tahap berikutnya";
				print_r( "Terjadi perubahan status Perangkat dan Interface. <br>Silahkan periksa email Anda");
				$this->snmp_model->drop_perubahan();

			} 
		}
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