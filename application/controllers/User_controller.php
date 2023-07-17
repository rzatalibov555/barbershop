<?php 
// https://www.pleth.com/posts/200-301-404-other-numbers-http-error-codes
// https://www.youtube.com/watch?v=RBB2N341tr0&t=18s&ab_channel=1BestCsharpblog
// https://codeigniter.com/userguide3/general/urls.html
class User_controller extends CI_Controller{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
    }


    public function index(){
        $data['staff'] = $this->User_model->get_staff();
        
        $this->load->view('user/index',$data);
    }

    public function about(){
        $this->load->view('user/about');
    }

    public function contact(){
        $this->load->view('user/contact');
    }

    public function gallery(){
        $this->load->view('user/gallery');
    }


    public function service(){
        $this->load->view('user/service');
    }


    public function staff(){
        $data['staff'] = $this->User_model->u_get_all_staff();
        $this->load->view('user/staff', $data);
    }


    public function staff_single($id){
        $id = $this->security->xss_clean($id);
        
        $data['single_staff'] = $this->User_model->get_single_staff($id);

        if(!$data['single_staff']){
            redirect(base_url('staff'));  
        }
        // print_r('<pre>');
        // print_r($data['single_staff']);
        // die();
        $this->load->view('user/staff_single',$data);
       
    }






}