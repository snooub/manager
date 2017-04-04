<?php

    return [
        'title_page_directory' => 'Sao chép thư mục',
        'title_page_file'      => 'Sao chép tập tin',

        'form' => [
            'input' => [
                'path_copy' => 'Đường dẫn sao chép đến:',
                'radio_action_copy' => 'Sao chép',
                'radio_action_move' => 'Di chuyển'
            ],

            'button' => [
                'browser' => 'Duyệt...',
                'copy'    => 'Sao chép',
                'cancel'  => 'Quay lại'
            ],

            'placeholder' => [
                'input_path_copy' => 'Nhập đường dẫn sao chép đến'
            ]
        ],

        'alert' => [
            'not_input_path_copy'                           => 'Chưa nhập đường dẫn sao chép',
            'action_not_validate'                           => 'Hành động không hợp lệ',
            'path_copy_is_equal_path_current'               => 'Đường dẫn sao chép phải khác đường dẫn hiện tại',
            'path_move_is_equal_path_current'               => 'Đường dẫn di chuyển phải khác đường dẫn hiện tại',
            'path_copy_not_exists'                          => 'Đường dẫn sao chép không tồn tại',
            'not_copy_file_to_directory_app'                => 'Bạn không thể sao chép vào thư mục của ứng dụng',
            'copy_directory_failed'                         => 'Sao chép thư mục <strong>{$filename}</strong> thất bại',
            'copy_directory_success'                        => 'Sao chép thư mục <strong>{$filename}</strong> thành công',
            'copy_file_failed'                              => 'Sao chép tập tin <strong>{$filename}</strong> thất bại',
            'copy_file_success'                             => 'Sao chép tập tin <strong>{$filename}</strong> thành công',
            'has_file_app_not_permission_copy'              => 'Thư mục chứa một số mục của ứng dụng, đã bỏ qua các mục này',
            'choose_directory_path_for_copy_directory'      => 'Chọn thư mục chứa để sao chép thư mục <strong>{$filename}</strong> tới',
            'choose_directory_path_for_move_directory'      => 'Chọn thư mục chứa để di chuyển thư mục <strong>{$filename}</strong> tới',
            'choose_directory_path_for_copy_file'           => 'Chọn thư mục chứa để sao chép tập tin <strong>{$filename}</strong> tới',
            'choose_directory_path_for_move_file'           => 'Chọn thư mục chứa để di chuyển tập tin <strong>{$filename}</strong> tới',
            'choose_directory_path_for_copy_directory_href' => 'lng{file_copy.alert.choose_directory_path_for_copy_directory}, nhấn vào <a href="{$href}"><strong>đây</strong></a> để chọn',
            'choose_directory_path_for_move_directory_href' => 'lng{file_copy.alert.choose_directory_path_for_move_directory}, nhấn vào <a href="{$href}"><strong>đây</strong></a> để chọn',
            'choose_directory_path_for_copy_file_href'      => 'lng{file_copy.alert.choose_directory_path_for_copy_file}, nhấn vào <a href="{$href}"><strong>đây</strong></a> để chọn',
            'choose_directory_path_for_move_file_href'      => 'lng{file_copy.alert.choose_directory_path_for_move_file}, nhấn vào <a href="{$href}"><strong>đây</strong></a> để chọn',
        ]
   ];

?>
