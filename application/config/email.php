<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * The mail sending protocol.
 */
$config['protocol'] = 'smtp';
/**
 * SMTP Server Address.
 */
$config['smtp_host'] = 'ssl://smtp.googlemail.com';
// $config['smtp_host'] = 'ssl://smtp.googlemail.com';
/**
 * SMTP Username.
 */
$config['smtp_user']	= 'mobinity.fx@gmail.com';
// $config['smtp_user']	= 'danurwijayanto@gmail.com';
/**
 * SMTP Password.
 */
$config['smtp_pass']    = '02717017652';
$config['mailtype']		= 'html';
$config['smtp_port']	= '465';
$config['charset']    = 'utf-8';
$config['newline']    = "\r\n";
$config['validation'] = TRUE; // bool whether to validate email or not