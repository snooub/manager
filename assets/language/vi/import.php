<?php

    return [
        'title_page' => 'Nhập khẩu',

        'form' => [
            'input' => [
                'label_import'         => 'Nhập khẩu:',
                'url'                  => 'Đường dẫn nhập khẩu:',
                'filename'             => 'Tên tập tin cho đường dẫn:',
                'exists_func_override' => 'Ghi đè',
                'exists_func_skip'     => 'Bỏ qua',
                'exists_func_rename'   => 'Đổi tên'
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
            'tips'                         => 'Để trống tên tập tin cho đường dẫn hệ thống sẽ tự động đặt tên',
            'data_empty_or_not_validate'   => 'Dữ liệu trống hoặc không hợp lệ',
            'url_import_not_validate'      => 'Đường dẫn không hợp lệ',
            'name_url_import_not_validate' => 'Tên tập tin <strong>{$name}</strong> không hợp lệ',
            'not_input_urls'               => 'Chưa nhập đường dẫn nào'
        ]
    ];

?>
