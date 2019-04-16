<?php


class System_tickets extends CI_Controller {
    function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
     var_dump('walla');
    }

    public function tickets_posted(){

        $now = get_current_utc_time();
        $ticket_data = array(
            "title" => $this->input->post('subject'),
            "ticket_id" => $this->input->post('ticket_type_id'),
            "created_by" => $this->input->post('created_by'),
            "email" => $this->input->post('email'),
            "created_at" => $now,
            "last_activity_at" => $now,
            "location_id" => $this->input->post('location'),
            "user_ref_id" => $this->input->post('user'),
            //"team_id" => $this->input->post('team_id'),
            "labels" => 'High'
        );

        if(isset($_FILES['image'])){
            $errors= array();
            $file_name = $_FILES['image']['name'];
            $file_size =$_FILES['image']['size'];
            $file_tmp =$_FILES['image']['tmp_name'];
            $files_data =time().'_'.$file_name;

            move_uploaded_file($file_tmp,"files/support_entries/".$files_data);

        }

        $ticket_id = $this->Support_entries_model->save($ticket_data);

        $comment_data = array(
            "description" => $this->input->post('description'),
            "ticket_id" => $ticket_id,
            "created_by" => $ticket_data['created_by'],
            "created_at" => $now,
            "files" =>$file_name ?  $files_data : ''
        );

        $this->Support_comments_model->save($comment_data);

        $ticket_data = array(
            "ticket_id" => $ticket_id,
            "ticket_title" => $this->input->post('subject'),
            "user_name" =>$this->input->post('created_by'),
            "ticket_content" => $this->input->post('description'),
            "ticket_url" => get_uri("tickets/view_support/" . $ticket_id),
            "send_to" => 'it.support@esl-eastafrica.com',
            'sender_name' => $ticket_data['created_by'],
            'sender_email' => $this->input->post('email')
        );

        $this->_support_ticket_created_mail_s($ticket_data);
        $this->_support_ticket_sender_mail_s($ticket_data);


        return redirect('https://www.pro-kazi.com/dashboard');
    }

    public function _support_ticket_created_mail_s($data) {

        $email_template = $this->Email_templates_model->get_final_template("ticket_created");

        $parser_data["TICKET_ID"] = $data['ticket_id'];
        $parser_data["TICKET_TITLE"] = $data["ticket_title"];
        $parser_data["USER_NAME"] = $data["user_name"];
        $parser_data["TICKET_CONTENT"] = $data["ticket_content"];
        $parser_data["TICKET_URL"] = $data["ticket_url"];
        $parser_data["SIGNATURE"] = $email_template->signature;

        $message = $this->parser->parse_string($email_template->message, $parser_data, true);
        send_app_mail($data['send_to'], $email_template->subject, $message);
    }

    public function _support_ticket_sender_mail_s($data) {

        $email_template = $this->Email_templates_model->get_final_template("ticket_created");

        $parser_data["TICKET_ID"] = $data['ticket_id'];
        $parser_data["TICKET_TITLE"] = $data["ticket_title"];
        $parser_data["USER_NAME"] = $data["sender_name"];
        $parser_data["TICKET_CONTENT"] = $data["ticket_content"];
        $parser_data["TICKET_URL"] = $data["ticket_url"];
        $parser_data["SIGNATURE"] = $email_template->signature;

        $message = $this->parser->parse_string($email_template->message, $parser_data, true);
        send_app_mail($data['sender_email'], $email_template->subject, $message);
    }
}
