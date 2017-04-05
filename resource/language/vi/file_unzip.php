<?php

    return [
        'title_page' => 'Giải nén zip',

        'form' => [
            'input' => [
                'path_unzip'             => 'Đường dẫn giải nén zip đến:',
                'if_has_entry_is_exists' => 'Nếu có thư mục hoặc tập tin đã tồn tại:',
                'exists_func_override'   => 'Ghi đè',
                'exists_func_skip'       => 'Bỏ qua',
                'exists_func_rename'     => 'Đổi tên'
            ],

            'button' => [
                'unzip'   => 'Giải nén',
                'browser' => 'Duyệt...',
                'cancel'  => 'Quay lại'
            ],

            'placeholder' => [
                'input_path_unzip' => 'Nhập đường dẫn giải nén đến'
            ]
        ],

        'alert' => [
            'file_is_not_format_archive_zip'  => 'Tập tin không phải định dạng zip',
            'not_input_path_unzip'            => 'Chưa nhập đường dẫn giải nén tập tin zip đến',
            'exists_func_not_validate'        => 'Hành động khi thư mục hoặc tập tin tồn tại không hợp lệ',
            'path_unzip_not_exists'           => 'Đường dẫn giải nén tập tin zip đến không tồn tại',
            'not_unzip_file_to_directory_app' => 'Bạn không thể giải nén tập tin zip vào thư mục của ứng dụng',
        ]
    ];

?>
