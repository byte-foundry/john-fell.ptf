exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		scCapHeight: xHeight + ( capDelta / 3 ) * smallCapDelta
		scThickness: thickness * _scThickness
		scWidth: width * _scWidth
		contrast: _contrast * -1
		ascenderHeight: xHeight + ascender
		minThickness: Math.max( 45, ( 95 / 85 ) * thickness )
		# serifHeight:
		# 	if serifHeight > 1
		# 	then Math.max(1, serifWidth)
		# 	else serifWidth
