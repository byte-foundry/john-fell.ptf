exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		contrast: _contrast * -1
		ascenderHeight: xHeight + ascender
		spacing: 1.1 * ( width / width ) # dirty workaround
		serifHeight:
			if serifWidth > 1
			then Math.max(4, serifHeight)
			else serifHeight
		serifWidth:
			if serifHeight > 1
			then Math.max(4, serifWidth)
			else serifWidth
	transforms: Array(
		['skewX', slant + 'deg']
	)
