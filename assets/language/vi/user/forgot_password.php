<?php

    return [
        'title_page' => 'Lấy lại mật khẩu',

        'form' => [
            'login'                     => 'Đăng nhập',
            'button_forgot_password'    => 'Lấy lại mật khẩu',
            'input_email_placeholder'   => 'Nhập email lấy lại mật khẩu',
            'input_captcha_placeholder' => 'Nhập mã bảo vệ'
        ],

        'alert' => [
            'forgot_password_not_enable' => 'Chức năng lấy lại mật khẩu không được bật',
            'lock_count_failed'          => 'Bạn đã nhập sai email quá <strong>{$count}</strong> lần, bạn còn <strong>{$time}</strong> nữa để nhập lại',
            'unlock_count'               => 'Bạn có thể tiếp tục nhập email',
            'not_input_email'            => 'Chưa nhập email',
            'not_input_captcha'          => 'Chưa nhập mã bảo vệ',
            'email_not_validate'         => 'Email không hợp lệ',
            'captcha_wrong'              => 'Mã bảo vệ sai',
            'email_wrong'                => 'Email không tồn tại',
            'user_not_exists'            => 'Người dùng không tồn tại',
            'user_is_band'               => 'Người dùng đó đã bị khóa',
            'forgot_password_failed'     => 'Gửi email lại mật khẩu thất bại',
            'forgot_password_success'    => 'Gửi email tới địa chỉ <strong>{$email}</strong> thành công, bạn hãy kiểm tra hộp thư, hoặc thư spam',
            'features_is_construct'      => 'Chức năng đang xây dựng'
        ],

        'mail' => [
            'name_from' => 'Hệ thống manager',
            'name_to'   => 'Người sử dụng manager',
            'subject'   => 'Yêu cấu lấy lại mật khẩu manager',
            'message'   => 'Có một yêu cầu lấy lại mật khẩu cho địa chỉ email này, nếu đó là bạn hãy nhấn vào đây để lấy lại mật khẩu'
        ]
    ];
