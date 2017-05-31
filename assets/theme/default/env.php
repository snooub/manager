<?php

    if (defined('LOADED') == false)
        exit;

    return [
        'directory' => 'default',
        'http'      => env('app.http.theme') . '/default',

        'body' => [
            'background_color' => 'efefef',
            'font_size'        => '14px',
            'font_family'      => 'Geneva,Tahoma,Verdana,sans-serif'
        ],

        'a:link_visited' => [
            'color' => '505050'
        ],

        'a:hover_focus' => [
            'color' => '909090'
        ],

        'input' => [
            'enabled' => [
                'color' => 'c0c0c0',
                'border_bottom_color' => 'e0e0e0',

                'hover_focus' => [
                    'color'               => '505050',
                    'border_bottom_color' => 'a0a0a0',

                    'danger_border_bottom_color'  => 'ef5350',
                    'success_border_bottom_color' => '66bb6a',
                    'info_border_bottom_color'    => '42a5f5',
                    'warning_border_bottom_color' => 'ffa726'
                ],

                'not_invalid' => [
                    'color'               => 'ef5350',
                    'border_bottom_color' => 'ef5350'
                ]
            ],

            'disabled' => [
                'color'               => '707070',
                'background_color'    => 'f0f0f0',
                'border_bottom_color' => 'c0c0c0'
            ],

            'type_checkbox_radio+label:before' => [
                'unchecked' => [
                    'color'       => 'a0a0a0',
                    'hover_color' => 'c0c0c0',

                    'text' => [
                        'color'       => '707070',
                        'hover_color' => '909090'
                    ]
                ],

                'checked' => [
                    'color'       => '00a99b',
                    'hover_color' => '00c9bb',

                    'text' => [
                        'color'       => '505050',
                        'hover_color' => '707070'
                    ]
                ],

                'disabled' => [
                    'color'            => 'c0c0c0',
                    'text_color'       => 'a0a0a0',
                    'background_color' => 'eaeaea'
                ]
            ],

            'placeholder' => [
                'color' => '808080'
            ]
        ],

        'div_select:before' => [
            'color' => 'c0c0c0'
        ],

        'ul_radio_choose_tab' => [
            'unchecked' => [
                'text_color'       => '505050',
                'background_color' => 'f0f0f0'
            ],

            'checked' => [

            ],

            'enabled' => [
                'checked' => [
                    'hover_text_color' => 'ffffff',
                    'background_color' => '00897b'
                ],

                'unchecked' => [
                    'hover_text_color' => '00897b',
                    'background_color' => 'e0e0e0'
                ]
            ],

            'disabled' => [
                'text_color' => 'c0c0c0'
            ],
        ],

        'div_header' => [
            'background_color' => '00897b',
            'max_width'        => '890px',
            'height'           => '55px',

            'span_logo' => [
                'color'       => 'ffffff',
                'hover_color' => 'e0e0e0',
                'font_size'   => '24px'
            ],

            'ul_action' => [
                'text_color'       => 'ffffff',
                'hover_text_color' => 'd0d0d0',
                'left'             => '60px'
            ]
        ],

        'div_footer' => [
            'text_color'             => 'c0c0c0',
            'text_shadow_color'      => 'f0f0f0',
            'border_top_color'       => 'e0e0e0',
            'after_background_color' => 'ffffff',
            'max_width'              => '150px',
            'margin_top'             => '50px',
            'padding'                => '15px'
        ],

        'div_content' => [
            'margin_top'    => '100px',
            'padding_left'  => '10px',
            'padding_right' => '10px'
        ]
    ];

?>