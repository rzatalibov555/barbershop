<?php 

// https://codeigniter.com/userguide3/general/urls.html
class User_controller extends CI_Controller{

    public function index(){
        $this->load->view('user/index');
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









}