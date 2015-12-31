exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		scCapHeight: xHeight + thickness
		scThickness: thickness * 0.9
		scWidth: width * 0.8
		contrast: _contrast * -1
		ascenderHeight: xHeight + ascender
		spacing: 1.1 * ( width / width ) # dirty workaround
		diacriticHeight: 60 * ( xHeight / xHeight )
		minThickness: Math.max( 45, ( 95 / 85 ) * thickness )
		# serifHeight:
		# 	if serifHeight > 1
		# 	then Math.max(1, serifWidth)
		# 	else serifWidth
