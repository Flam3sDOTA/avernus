"use strict";

GameUI.SetCameraDistance( 1350 );

function objectValues( obj )
{
	return Object.keys( obj ).map( key => obj[ key ] );
}

function objectForEach( obj, fn ) // fn is ( key, value, index )
{
	Object.keys( obj ).forEach( ( key, index ) => fn( key, obj[ key ], index ) );
}

function arraySum( array, fn ) // fn is ( value, index ) => number
{
	var s = 0;
	var f = fn ? fn : n => n;
	array.forEach( ( value, index ) => s += f( value, index ) );
	return s;
}

function angle2d( vec1, vec2 )
{
    return Math.atan2( vec2[ 1 ] - vec1[ 1 ], vec2[ 0 ] - vec1[ 0 ] ) * 180 / Math.PI;
}
