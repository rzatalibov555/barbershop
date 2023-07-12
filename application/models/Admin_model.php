<?php 

class Admin_model extends CI_Model{

    public function insert_staff($data){
        $this->db->insert('staff',$data);
    }
    
    public function get_all_data(){
        return $this->db->order_by('s_id',"DESC")
        ->join('position',"position.p_id = staff.s_position", "left")
        ->get('staff')
        ->result_array();
    }

    public function get_single_staff($id){
        return $this->db->where('s_id',$id)->get('staff')->row_array();
    }

    public function delete_staff($id){
        $this->db->where('s_id', $id)->delete('staff');
        redirect(base_url('a_staff_list'));
    }

    public function update_staff($id, $data){
        $this->db->where('s_id', $id)->update('staff', $data);
    }


    public function check_admin_login($data){
        return $this->db->select('a_id')->where($data)->get('admin')->row_array();
    }
   

    public function get_all_position(){
        return $this->db->get('position')->result_array();
    }

    public function chek_position($position){
        return $this->db->where('p_id', $position)->get('position')->row_array();
    }

}