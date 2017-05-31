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

        'box_shadow' => [
            'h_shadow' => '1px',
            'v_shadow' => '1px',
            'blur'     => '3px',
            'color'    => 'rgba(0, 0, 0, 0.3)'
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

            'box_shadow' => [
                'h_shadow' => '0',
                'v_shadow' => '1px',
                'blur'     => '5px',
                'color'    => 'rgba(0, 0, 0, 0.5)'
            ],

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
        ],

        'ul_alert' => [
            'margin_bottom' => '20px',

            'li' => [
                'color'            => '505050',
                'hover_color'      => '707070',
                'background_color' => 'ffffff',
                'font_size'        => '14px',
                'padding'          => '12px',
                'margin_bottom'    => '8px',

                'danger_color'  => 'bf1c1c',
                'success_color' => '33691e',
                'info_color'    => '006064',
                'warning_color' => 'ef6c00',

                'info_link_hover_color' => '00acc1',

                'danger_background_color'  => 'ffcdd2',
                'success_background_color' => 'dcedc8',
                'info_background_color'    => 'b2ebf2',
                'warning_background_color' => 'ffe0b2'
            ]
        ],

        'ul_menu_action' => [
            'background_color' => 'ffffff',
            'margin_bottom'    => '15px',

            'li' => [
                'text_color'       => '505050',
                'hover_text_color' => '707070',
                'padding'          => '10px',
                'width'            => '50%',

                'responsive_min_width' => [
                    'value' => '640px',
                    'width' => '30%'
                ],

                'child_is_2' => [
                    'width' => '50%'
                ],

                'icon_font' => [
                    'font_size'    => '17px',
                    'margin_right' => '3px'
                ]
            ]
        ],

        'ul_paging' => [
            'margin_bottom' => '15px',
            'width'         => '100%',
            'height'        => '45px',

            'li' => [
                'line_height'   => '45px',
                'padding_left'  => '3px',
                'padding_right' => '3px',

                'current' => [
                    'text_color'       => 'ffffff',
                    'background_color' => '00897b',
                    'padding'          => '5px'
                ],

                'other' => [
                    'text_color'       => '00897b',
                    'background_color' => 'f0f0f0',
                    'padding'          => '5px',

                    'hover' => [
                        'text_color'       => 'ffffff',
                        'background_color' => '303030'
                    ]
                ],

                'jump' => [
                    'text_color' => '707070',

                    'hover' => [
                        'text_color' => '00897b'
                    ]
                ]
            ]
        ],

        'div_form_action' => [
            'background_color' => 'ffffff',
            'margin_bottom'    => '15px',

            'div_title' => [
                'text_color'    => '505050',
                'font_weight'   => 'normal',
                'font_size'     => '17px',
                'padding'       => '10px',
                'margin_bottom' => '20px'
            ],

            'ul_form_element' => [
                'padding_bottom' => '15px',
                'width'          => '100%',

                'li' => [
                    'margin_left'    => '15px',
                    'margin_right'   => '15px',
                    'padding_top'    => '10px',
                    'padding_bottom' => '20px',

                    'indentation' => [
                        'margin_left' => '30px'
                    ],

                    'input_textarea_select' => [
                        'margin_top' => '5px',
                        'padding'    => '10px',
                        'width'      => '100%'
                    ],

                    'input_textarea_select_checkbox_radio' => [
                        'text_color'  => '00897b',
                        'font_size'   => '14px',
                        'font_weight' => 'normal'
                    ],

                    'checkbox_radio' => [
                        'margin_bottom'  => '15px',
                        'ul_margin_left' => '15px'
                    ],

                    'input_chmod' => [
                        'height' => '155px',

                        'li' => [
                            'font_size'   => '14px',
                            'width'       => '33.3%',
                            'height'      => '40px',
                            'line_height' => '40px',
                            'padding'     => '0',

                            'child_is_3' => [
                                'text_color'       => 'ffffff',
                                'font_weight'      => 'bold',
                                'background_color' => '00897b',
                                'padding_left'     => '10px',
                                'padding_right'    => '10px'
                            ]
                        ],

                        'input' => [
                            'unchecked' => [
                                'background_color' => 'f8f8f8',
                                'width'            => '100%',
                                'height'           => '40px',

                                'text_color'                           => 'e0e0e0',
                                'text_hover_color'                     => 'c0c0c0',
                                'text_margin_left'                     => '10px',
                                'text_margin_right'                    => '10px',
                                'text_margin_left_span_has_icon_font'  => '2px',
                                'text_icon_font_margin_left'           => '0',
                                'text_icon_font_margin_right'          => '2px'
                            ],

                            'checked' => [
                                'text_color'             => '505050',
                                'background_color'       => 'e0e0e0',
                                'hover_background_color' => 'eaeaea'
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ];

?>