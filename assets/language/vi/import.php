<?php

    return [
        'title_page' => 'Nhập khẩu',

        'form' => [
            'input' => [
                'label_import'         => 'Nhập khẩu <span id="label_count">{$count}</span>:',
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
            'data_empty_or_not_validate' => 'Dữ liệu trống hoặc không hợp lệ',
            'not_input_urls'             => 'Chưa nhập đường dẫn nào'
        ]
    ];

?>
