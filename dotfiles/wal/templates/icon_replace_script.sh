#!/usr/bin/env bash
#	default color: 178984
#oldglyph={{oldglyph}}
newglyph={color0}

#	Front
#	default color: 36d7b7
#oldfront={{oldfront}}
newfront={color5}

#	Back
#	default color: 1ba39c
#oldback={{oldback}}
newback={color13}

sed -i "s/#524954/$newglyph/g" $1
sed -i "s/#9b8aa0/$newfront/g" $1
sed -i "s/#716475/$newback/g" $1
#sed -i "s/$oldglyph;/$newglyph;/g" $1
#sed -i "s/$oldfront;/$newfront;/g" $1
#sed -i "s/$oldback;/$newback;/g" $1
