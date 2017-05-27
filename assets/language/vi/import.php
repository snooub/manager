<?php

    return [
        'title_page' => 'Nhập khẩu',

        'form' => [
            'input' => [
                'label_import'         => 'Nhập khẩu:',
                'url'                  => 'Đường dẫn nhập khẩu:',
                'filename'             => 'Tên tập tin cho đường dẫn:',
                'label_exists_func'    => 'Chế độ ghi đè khi có tập tin đã tồn tại',
                'exists_func_override' => 'Ghi đè',
                'exists_func_skip'     => 'Bỏ qua',
                'exists_func_rename'   => 'Đổi tên',
                'label_mode_import'    => 'Chế độ nhập khẩu',
                'mode_import_curl'     => 'Curl',
                'mode_import_socket'   => 'Socket'
            ],

            'button' => [
                'more'   => 'Thêm...',
                'import' => 'Nhập khẩu',
                'cancel' => 'Quay lại'
            ],

            'placeholder' => [
                'input_url'      => 'Nhập đường dẫn nhập khẩu',
                'input_filename' => 'Nhập tên tập tin cho đường dẫn'
            ]
        ],

        'alert' => [
            'tips'                         => 'Để trống tên tập tin cho đường dẫn hệ thống sẽ tự động đặt tên. Có thể viết <strong>http://</strong> hoặc không cũng được. Hỗ trợ tải tập tin không mật khẩu từ <strong>www.mediafire.com</strong>',
            'data_empty_or_not_validate'   => 'Dữ liệu trống hoặc không hợp lệ',
            'url_import_not_validate'      => 'Đường dẫn <strong>{$url}</strong> không hợp lệ',
            'name_url_import_not_validate' => 'Tên tập tin <strong>{$name}</strong> không hợp lệ',
            'not_input_urls'               => 'Chưa nhập đường dẫn nào',
            'exists_func_not_validate'     => 'Chế độ ghi đè khi có tập tin đã tồn tại không hợp lệ',
            'mode_import_not_validate'     => 'Chế độ nhập khẩu tập tin không hợp lệ',
            'address_not_found'            => 'Địa chỉ <strong>{$url}</strong> không tồn tại',
            'file_not_found'               => 'Địa chỉ tập tin <strong>{$url}</strong> không tồn tại trên trang này',
            'auto_redirect_url_failed'     => 'Địa chỉ <strong>{$url}</strong> chuyển hướng thất bại',
            'connect_url_failed'           => 'Kết nối tới địa chỉ <strong>{$url}</strong> thất bại',
            'error_unknown'                => 'Không rõ lỗi cho địa chỉ <strong>{$url}</strong>'
        ]
    ];

?>
