<?php 

class User_model extends CI_Model{


    public function get_staff(){
        return $this->db
        ->select("s_id,s_name_az,s_name_en,s_name_ru,s_position,s_status,s_whatsApp,s_facebook,s_instagram,s_telegram,s_youtube,s_img,s_img_ext,s_email,p_id,p_name_az,p_name_en,p_name_ru")
        ->join('position', 'position.p_id = staff.s_position', "left")
        ->where('s_status','active')
        ->limit(6)
        ->get('staff')->result_array();
    }


    public function u_get_all_staff($config,$page){
        return $this->db
        
        ->limit($config['per_page'],$page)
        
        ->order_by('s_id', "DESC")
        ->where("s_status", "Active")
        ->join("position", "position.p_id = staff.s_position", "left")
        ->get("staff")->result_array();
    }

    public function get_single_staff($id){
        return $this->db
        ->where("s_id", $id)
        ->where("s_status", "Active")
        ->join("position", "position.p_id = staff.s_position", "left")
        ->get('staff')->row_array();
    }

}