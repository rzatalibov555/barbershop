<?php 

class User_model extends CI_Model{


    public function get_staff(){
        return $this->db
        ->select("s_id,s_name_az,s_name_en,s_name_ru,s_position,s_status,s_whatsApp,s_facebook,s_instagram,s_telegram,s_youtube,s_img,s_img_ext,s_email")
        ->where('s_status','active')
        ->limit(6)
        ->get('staff')->result_array();
    }


    public function u_get_all_staff(){
        return $this->db
        ->join("position", "position.p_id = staff.s_position", "left")
        ->get("staff")->result_array();
    }

}