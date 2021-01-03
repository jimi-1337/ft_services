<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '.tuTQfn;_)BS2)@IJ=._1]RL?+lMlZ|RnhZM<H3px|4*o^_b%G-yvf1/@M|5W4e4' );
define( 'SECURE_AUTH_KEY',  '8p1hO;*r5H$_5::lG=S ]4L_(/nt/WNAc.J{y>h4A`5dF<mg2`xP ehT.^dKDrvH' );
define( 'LOGGED_IN_KEY',    '0xU*<]CRRN8VSf:QgXMYKo8z$IVD=w%F>G4muzno<Cvpru!~T_XUg1cBcAQ-Kw&d' );
define( 'NONCE_KEY',        'rk/;ij3?RKne*5#bL=^pT3?L+WYui;gn=O &VR]}yO[]8,zQN(AS.$h~+*Jg.sZd' );
define( 'AUTH_SALT',        'MLW@A0w~t+oqF3~$ukW~eD=P!vb4*0|W_?oy%HoH||PHI@z_]nJrz$3[sTTUDf 3' );
define( 'SECURE_AUTH_SALT', '0Oa|UuoElIzz6LaBN{:UNKXSup#+y qvt<c3a(;I!uj9_a:S`yI;&g:R8M%*^!yB' );
define( 'LOGGED_IN_SALT',   'w{ACF:[LhW-plO9$},,!WB!4F/m2KJbOjzNEPlJ{+8R7hS?2]m}sWka.KlHzu7GG' );
define( 'NONCE_SALT',       ',q=vU:}rB4whI^?S-b<SbJ2|2!0L&RQ[faLhs#4ggW}rA04MNvs2/SOl<nPsTO;1' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';