<?php $this->load->view('admin/includes/header_style'); ?>
<?php $this->load->view('admin/includes/left_menu'); ?>
<?php $this->load->view('admin/includes/navbar'); ?>
<?php $this->load->view('admin/includes/statistics'); ?>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Staff Create</h6>
    </div>
    <div class="card-body">

            <br>
            <h3 class="text-center text-white bg-primary py-2 rounded">Contact Information</h3>
            <br>

        <form class="user">
            <div class="form-group row">
                <div class="col-sm-4 mb-3 mb-sm-0">
                    <label for="FirstName"><b>First Name</b></label>
                    <input type="text" name="FirstName" class="form-control" id="FirstName" placeholder="First Name">
                </div>
                <div class="col-sm-4">
                    <label for="LastName"><b>Last Name</b></label>
                    <input type="text" name="LastName" class="form-control" id="LastName" placeholder="Last Name">
                </div>

                <div class="col-sm-4 mb-3 mb-sm-0">
                        <label for="Email"><b>Email</b></label>
                        <input type="text" name="Email" class="form-control" id="Email" placeholder="Email">
                    </div>
            </div>
            <div class="form-group">
                <div class="row">
                  
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <label for="Position"><b>Position</b></label>
                      
                        <select name="position" id="Position" class="form-control">
                            <option value="">-SELECT-</option>
                            <option value="Director">Director</option>
                            <option value="Manager">Manager</option>
                            <option value="Master">Master</option>
                            <option value="Asistent">Asistent</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <label for="mob"><b>Mob</b></label>
                        <input type="text" name="mobile" class="form-control" id="mob" placeholder="+994-- --- -- --">
                    </div>
                    <div class="col-sm-4 mb-3 mb-sm-0">
                        <label for="WhatsApp"><b>WhatsApp</b></label>
                        <input type="text" name="WhatsApp" class="form-control" id="WhatsApp" placeholder="+994-- --- -- --">
                    </div>
                </div>
            </div>



          
            <br>
            <h3 class="text-center text-white bg-primary py-2 rounded">Social Network</h3>
            <br>
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        <label for="Facebook"><b>Facebook</b></label>
                        <input type="text" name="Facebook" class="form-control" id="Facebook" placeholder="Facebook">
                    </div>
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        <label for="Instagram"><b>Instagram</b></label>
                        <input type="text" name="Instagram" class="form-control" id="Instagram" placeholder="Instagram">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        <label for="Telegram"><b>Telegram</b></label>
                        <input type="text" name="Telegram" class="form-control" id="Telegram" placeholder="https://www.....">
                    </div>

                    <div class="col-sm-6 mb-3 mb-sm-0">
                        <label for="Youtube"><b>Youtube</b></label>
                        <input type="text" name="Youtube" class="form-control" id="Youtube" placeholder="Youtube">
                    </div>
                </div>
            </div>
            <br>

            <br>
            <h3 class="text-center text-white bg-primary py-2 rounded">Extra</h3>
            <br>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-3 mb-3 mb-sm-0">
                        <label for="Status"><b>Status</b></label>
                        <input type="text" name="Status" class="form-control" id="Status" placeholder="Status">
                    </div>
                    <div class="col-sm-3 mb-3 mb-sm-0">
                        <label for="ProfilePhoto"><b>Profile Photo</b></label>
                        <input type="file" name="file" class="form-control" id="ProfilePhoto">
                    </div>
                </div>
            </div>
            <br>
           
            <button type="submit" class="btn btn-primary">Submit</button>
           
        
        </form>



    </div>
</div>



<?php $this->load->view('admin/includes/footer'); ?>
<?php $this->load->view('admin/includes/footer_scripts'); ?>