<?php $this->load->view('admin/includes/header_style'); ?>
<?php $this->load->view('admin/includes/left_menu'); ?>
<?php $this->load->view('admin/includes/navbar'); ?>
<?php $this->load->view('admin/includes/statistics'); ?>






<div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example <a href="<?php echo base_url('a_staff_create'); ?>"><button style="float:right;" type="button" class="btn btn-success">Create</button></a></h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTables" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name Surname</th>
                            <th>Position</th>
                            <th>Email</th>
                            <th>Experience</th>
                            <th>Status</th>
                            <th>Profile</th>
                            <th>Operations</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php $say = 0; foreach($get_all_data as $get_all_data_key){ $say++ ?>
                            <tr>
                                <td><?php echo $say; ?></td>
                                <td><?php echo $get_all_data_key['s_name_az']; ?> <?php echo $get_all_data_key['s_surname_az']; ?></td>
                                <td><?php echo $get_all_data_key['p_name_az']; ?></td>
                                <td><?php echo $get_all_data_key['s_email']; ?></td>
                                <td>
                                    <?php if($get_all_data_key['s_experience']){ ?>
                                        <?php echo $get_all_data_key['s_experience']; ?>-il
                                    <?php }else{
                                        echo "<b style='color:red;'>Yoxdur!</b>";
                                    } ?>
                                    
                                </td>
                                <td><?php echo $get_all_data_key['s_status']; ?></td> 
                                <td>
                                    <?php if($get_all_data_key['s_img']){ ?>
                                        <img width="50" height="50" style="object-fit: cover;" src="<?php echo base_url('uploads/staff/'.$get_all_data_key['s_img']); ?>" alt="">
                                    <?php }else{ ?>
                                        <img width="50" height="50" style="object-fit: cover;" src="https://thumbs.dreamstime.com/b/no-image-available-icon-flat-vector-no-image-available-icon-flat-vector-illustration-132482953.jpg" alt="">
                                    <?php } ?>
                                    
                                </td> 
                                <td>
                                    <a href="<?php echo base_url('a_detail_staff/'.$get_all_data_key['s_id']); ?>" style="text-decoration: none;">
                                        <button type="button" title="View" class="btn btn-success">
                                            <i class="fas fa-fw fa-eye"></i>
                                        </button>
                                    </a>
                                    <a href="<?php echo base_url('a_edit_staff/'.$get_all_data_key['s_id']); ?>" style="text-decoration: none;">
                                        <button type="button" title="Update" class="btn btn-warning">
                                            <i class="fas fa-fw fa-pen"></i>
                                        </button>
                                    </a>
                                    <a onclick="return confirm('Are you sure want to delete this item?')" href="<?php echo base_url('a_delete_staff/'.$get_all_data_key['s_id']); ?>" style="text-decoration: none;">
                                        <button type="button" title="Delete" class="btn btn-danger">
                                            <i class="fas fa-fw fa-trash"></i>
                                        </button>
                                    </a>
                                </td> 
                            </tr>
                        <?php } ?>
                        

                      

                    
               
                    </tbody>
                    
                   
                </table>
            </div>
        </div>
    </div>

    <?php $this->load->view('admin/includes/footer'); ?>
    <?php $this->load->view('admin/includes/footer_scripts'); ?>