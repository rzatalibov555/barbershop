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

    public function product_list(){
        $this->load->view("admin/product/list");
    }
    
    public function product_create(){
        $this->load->view("admin/product/create");
    }


}