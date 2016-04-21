
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class User extends CI_Controller {
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

	public function __construct() {
		parent::__construct();			
			if ($this->session->userdata('logged_in')==NULL) {
				redirect(base_url('login_admin'));
			}else{
				$this->session_data = $this->session->userdata('logged_in');
				$this->data_sesi = $this->auth->read_user_information($this->session_data);
			}
	}

	public function data_user(){
		$data = array(
				'title'=>'Network Management System UPPTI FSM UNDIP',
				'isi' =>'admin/isi/data_user',
				'user' => $this->auth->get_all_user(),
				'session' => $this->data_sesi
		);
		$this->load->view('admin/wrapper', $data);
	}
	
}
/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */