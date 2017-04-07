<?php

    return [
        'title_page' => 'Giải nén zip',

        'form' => [
            'input' => [
                'path_unzip'             => 'Đường dẫn giải nén zip đến:',
                'if_has_entry_is_exists' => 'Nếu có thư mục hoặc tập tin đã tồn tại:',
                'exists_func_override'   => 'Ghi đè',
                'exists_func_skip'       => 'Bỏ qua'
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
            'cancel_unzip_failed'                         => 'Hủy duyệt đường dẫn giải nén tập tin <strong>{$filename}</strong> thất bại',
            'cancel_unzip_success'                        => 'Hủy duyệt đường dẫn giải nén tập tin <strong>{$filename}</strong> thành công',
            'file_is_not_format_archive_zip'              => 'Tập tin không phải định dạng zip',
            'not_input_path_unzip'                        => 'Chưa nhập đường dẫn giải nén tập tin zip đến',
            'exists_func_not_validate'                    => 'Hành động khi thư mục hoặc tập tin tồn tại không hợp lệ',
            'path_unzip_not_exists'                       => 'Đường dẫn giải nén tập tin zip đến không tồn tại',
            'not_unzip_file_to_directory_app'             => 'Bạn không thể giải nén tập tin zip vào thư mục của ứng dụng',
            'unzip_file_failed'                           => 'Giải nén tập tin <strong>{$filename}</strong> thất bại',
            'unzip_file_success'                          => 'Giải nén tập tin <strong>{$filename}</strong> thành công',
            'file_zip_has_file_app'                       => 'Tập tin zip có chứa tập tin có thể chép đến thư mục của ứng dụng nên nó đã bị bỏ qua',
            'directory_path_choose_is_validate'           => 'Đường dẫn <strong>{$path}</strong> được chọn hợp lệ',
            'choose_directory_path_for_unzip'             => 'Chọn thư mục chứa để giải nén tập tin <strong>{$filename}</strong> tới',
            'choose_directory_path_for_unzip_href'        => 'lng{file_unzip.alert.choose_directory_path_for_unzip}, nhấn vào <a href="{$href}"><strong>đây</strong></a> để chọn',
            'choose_directory_path_for_unzip_href_cancel' => 'lng{file_unzip.alert.choose_directory_path_for_unzip_href}, nhấn vào <a href="{$href_cancel}"><strong>đây</strong></a> để hủy'
        ]
    ];

?>
