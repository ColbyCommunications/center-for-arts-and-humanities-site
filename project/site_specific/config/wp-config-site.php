<?php

if ( 'master' == getenv( 'PLATFORM_BRANCH' ) ) {
    define( 'ALGOLIA_INDEX_NAME_PREFIX', 'prod_cah_' );
} else {
    define( 'ALGOLIA_INDEX_NAME_PREFIX', 'platform_cah_' );
}