<?php 

class Admin_controller extends CI_Controller{


    public function index(){
        $this->load->view("admin/login");
    }

    public function login_action(){
        
    }

    public function dashboard(){
        $this->load->view("admin/index");
    }

    public function staff_list(){
        $this->load->view("admin/staff/list");
    }
    
    public function staff_create(){
        $this->load->view("admin/staff/create");
    }

    

}