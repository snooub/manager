<?php

    return [
        'title_page' => 'Kiểm tra cập nhật',

        'info' => [
            'label' => [
                'last_check_update' => 'Thời gian kiểm tra cuối:',
                'last_upgrade'      => 'Thời gian nâng cấp cuối:',
                'version_current'   => 'Phiên bản hiện tại:'
            ],

            'value' => [
                'not_last_check_update' => 'Chưa kiểm tra cập nhật lần nào',
                'not_last_upgrade'      => 'Chưa nâng cấp lần nào'
            ]
        ],

        'form' => [
            'button' => [
                'check' => 'Kiểm tra'
            ]
        ],

        'alert' => [
            'check_update_failed'          => 'Kiểm tra cập nhật thất bại',
            'address_not_found'            => 'Địa chỉ <strong>{$url}</strong> không tồn tại',
            'file_not_found'               => 'Địa chỉ tập tin <strong>{$url}</strong> không tồn tại trên trang này',
            'auto_redirect_url_failed'     => 'Địa chỉ <strong>{$url}</strong> chuyển hướng thất bại',
            'connect_url_failed'           => 'Kết nối tới địa chỉ <strong>{$url}</strong> thất bại',
            'error_json_data'              => 'Lỗi dữ liệu địa chỉ <strong>{$url}</strong> có vấn đề',
            'error_json_data_not_validate' => 'Lỗi dữ liệu địa chỉ <strong>{$url}</strong> không hợp lệ',
            'error_unknown'                => 'Không rõ lỗi cho địa chỉ <strong>{$url}</strong>',
            'version_is_old'               => 'Phiên bản <strong>{$version_current}</strong> hiện tại đã cũ, đã có phiên bản mới <strong>{$version_update}</strong> bạn hãy nhấn tải về để cập nhật',
            'version_is_latest'            => 'Phiên bản <strong>{$version_current}</strong> hiện tại là mới nhất'
        ]
    ];

?>