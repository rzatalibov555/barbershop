<?php 
// https://www.pleth.com/posts/200-301-404-other-numbers-http-error-codes
// https://www.youtube.com/watch?v=RBB2N341tr0&t=18s&ab_channel=1BestCsharpblog
// https://codeigniter.com/userguide3/general/urls.html
// https://codeigniter.com/userguide3/libraries/pagination.html


// multilanguage
// datatable
// ckeditor

// servere yuklemek
// sendmail
// compressor




class User_controller extends CI_Controller{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->library('pagination');
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
        // $data = new stdClass();
        // echo $this->uri->segment(2);
        // print_r('<pre>');
        // print_r($config['base_url']);
        // die();
        
        // $data['staff'] = $this->db
        // ->limit($config['per_page'],$page)
        // ->where("s_status", "Active")
        // ->order_by('s_id', "DESC")
        // ->join("position", "position.p_id = staff.s_position", "left")
        // ->get("staff")->result();

        $config['base_url'] = base_url('staff');
        $config['total_rows']  = $this->db->count_all("staff");
        $config['uri_segment'] = 2;
        $config['per_page'] = 9;
        $config['num_links'] = 4;
        
        // $config['page_query_string'] = TRUE;
        $config['use_page_numbers'] = TRUE;
        // $config['next_link'] = 'Əvvəl';
        // $config['last_link'] = 'Son';


        $this->pagination->initialize($config);

        $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        $data['links'] = $this->pagination->create_links();


        $data['staff'] = $this->User_model->u_get_all_staff($config,$page);
        
        if(!$data['staff']){
            redirect(base_url('home'));
        }

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