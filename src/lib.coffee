exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		contrast: _contrast * -1
		ascenderHeight: xHeight + ascender
		spacing: 1.1 * ( width / width ) # dirty workaround
		serifHeight:
			if serifWidth > 1
			then Math.max(1, serifHeight)
			else serifHeight
	transforms: Array(
		['skewX', slant + 'deg']
	)
