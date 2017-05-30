<?php

    return [
        'title_page' => 'Nâng cấp ứng dụng',

        'info' => [
            'label_server_name'   => 'Địa chỉ tải về:',
            'label_version'       => 'Phiên bản:',
            'label_build_last'    => 'Đóng gói lúc:',
            'label_data_length'   => 'Kích thước dữ liệu:',
            'label_md5_bin_check' => 'MD5 sum:',
            'label_readme'        => 'Thông tin:',
            'label_changelog'     => 'Thay đổi của phiên bản:'
        ],

        'form' => [
            'button' => [
                'upgrade' => 'Nâng cấp'
            ]
        ],

        'alert' => [
            'error_check_upgrade_file_not_found'   => 'Tập tin nâng cấp không tồn tại',
            'error_check_upgrade_file_data_error'  => 'Dữ liệu tập tin nâng cấp bị lỗi',
            'error_check_upgrade_md5_check_failed' => 'Tập tin nâng cấp có thể đã bị thay đổi, mã md5 không khớp với tập tin nâng cấp',
            'error_zip_not_open'                   => 'Mở tập tin nâng cấp thất bại',
            'error_zip_extract'                    => 'Giải nén tập tin nâng cấp thất bại',
            'error_upgrade_not_list_file_app'      => 'Quét danh sách tập tin ứng dụng thất bại',
            'error_unknown'                        => 'Lỗi không xác định',
            'upgrade_app_success'                  => 'Nâng cấp lên phiên bản <strong>{$version}</strong> thành công'
        ]
    ];

?>