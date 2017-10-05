<?php

    return [
        'title_page' => 'Cài đặt hệ thống',

        'form' => [
            'input' => [
                'login_max_lock_count'     => 'Số lần đăng nhập sai sẽ bị khóa:',
                'login_time_lock'          => 'Thời gian khóa (tính bằng giây):',
                'login_time_login'         => 'Thời gian một phiên đăng nhập:',

                'enable_disable_label'     => 'Bật/Tắt',
                'enable_forgot_password'   => 'Bật/Tắt lấy lại mật khẩu',
                'enable_lock_count_failed' => 'Bật/Tắt khóa khi đăng nhập sai quá số lần'
            ],

            'button' => [
                'save'   => 'Lưu lại',
                'cancel' => 'Quay lại'
            ],

            'placeholder' => [
                'input_login_max_lock_count' => 'Nhập số lần đăng nhập sai sẽ khóa',
                'input_login_time_lock'      => 'Nhập thời gian khóa',
                'input_login_time_login'     => 'Nhập thời gian cho một phiên đăng nhập'
            ]
        ],

        'alert' => [
            'tips'                 => 'Một phiên đăng nhập sẽ chết sau khoảng thời gian cài đặt nếu không được sử dụng',
            'save_setting_failed'  => 'Lưu cài đặt thất bại',
            'save_setting_success' => 'Lưu cài đặt thành công'
        ]
    ];
