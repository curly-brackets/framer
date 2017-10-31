
# The different «text» options to show and their languages
options = [ 
	{
		lang: "Latin"
		text: "The sky was cloudless and of a deep dark blue."
	}
	{
		lang: "Arabic"
		text: "نص حكيم له سر قاطع وذو شأن عظيم مكتوب على ثوب أخضر ومغلف بجلد أزرق."
	}
	{
		lang: "Bengali"
		text: "তরঙ্গরাজিরা নিজেরাই সেই সুনীল সন্ধ্যায় নিক্ষিপ্ত হচ্ছিল৷"
	}
	{
		lang: "Chinese"
		text: "敏捷的褐色狐狸从懒狗身上跳过。"
	}
	{
		lang: "Cyrillic"
		text: "Туман окутал корабль через три часа после выхода из порта."
	}
	{
		lang: "Greek"
		text: "Η ηχογραφημένη φωνή ακούστηκε βραχνή στο ηχείο πάνω από την πόρτα."
	}
	{
		lang: "Gujarati"
		text: "આકાશ વાદળરહિત તથા ઘેરા વાદળી રંગનું હતું."
	}
	{
		lang: "Hebrew"
		text: "דג סקרן שט בים מאוכזב ולפתע מצא חברה."
	}
	{
		lang: "Japanese"
		text: "鳥啼く声す 夢覚ませ 見よ明け渡る 東を 空色栄えて 沖つ辺に 帆船群れゐぬ 靄の中"
	}
	{
		lang: "Kannada"
		text: "ಇದು ಕೇವಲ ಸಮಯದ ಪ್ರಶ್ನೆಯಾಗಿದೆ."
	}
	{
		lang: "Malayalam"
		text: "അവരുടെ എല്ലാ ഉപകരണങ്ങളും യന്ത്രങ്ങളും ഏതെങ്കിലും രൂപത്തിൽ സജീവമാണ്."
	}
	{
		lang: "Tamil"
		text: "அந்திமாலையில், அலைகள் வேகமாக வீசத் தொடங்கின."
	}
	{
		lang: "Thai"
		text: "ท้องฟ้าไร้เมฆและเป็นสีน้ำเงินเข้มจัด"
	}
]


# Visible background for the Text Layer
theTextLayer.backgroundColor = "#eee"

# Adjust the Text Layer’s height automatically
theTextLayer.autoHeight = yes


# Functions for the slider

# round number to a set amount
round = (number, nearest) ->
	Math.round(number / nearest) * nearest


# - add dots for increments to slider
# - enforce increments
# - change title on value change

applyIncrements = (slider,options) ->
	
	latestOption = null
	
	sizeOfDots = slider.height + 2
	stepAmount = options.length
	
	stepDistanceDots = ( slider.width - sizeOfDots ) / ( stepAmount - 1 )
	stepDistanceKnob = slider.width / ( stepAmount - 1 )
	
	for i in [0...stepAmount]
		dot = new Layer 
			size: sizeOfDots
			borderRadius: sizeOfDots / 1.5
			superLayer: slider
			backgroundColor: artboard.backgroundColor
			x: (stepDistanceDots * i)
		
		dot.placeBehind slider.knob
		dot.y = Align.center
	
	slider.min = 0
	slider.max = stepAmount-1
	
	slider.onValueChange ->
		if options[Utils.round @value] isnt latestOption
			# make the text a bit smaller
			theTextLayer.scale = 0.95
			# set the text string
			theTextLayer.text = options[Utils.round @value].text
			# … and language family
			languageFamily.text = options[Utils.round @value].lang
			# … and set correct direction for right-to-left languages
			theTextLayer.direction = "left-to-right"
			theTextLayer.textAlign = Align.left
			if options[Utils.round @value].lang is "Arabic" or options[Utils.round @value].lang is "Hebrew"
				theTextLayer.direction = "right-to-left"
				theTextLayer.textAlign = Align.right
			# scale back up
			theTextLayer.animate
				scale: 1
				options:
					time: .3
					curve: "Spring"
			
			latestOption = options[Utils.round @value]
		
		propertyValue.text = "\"#{options[Utils.round @value].text}\""
	
	slider.knob.draggable.updatePosition = (point) ->
		point.x = round(point.x, stepDistanceKnob) - (slider.knob.width / 2)
		return point

# Setup title
propertyValue.truncate = yes
propertyValue.text = "\"#{options[0].text}\""

# Resize if needed
propertyValue.width = Screen.width - 25 - propertyValue.x

# Setup Text Layer

# Set first text string
theTextLayer.text = options[0].text
# … and language family
languageFamily.text = options[0].lang


# Slider
slider = new SliderComponent
	height: 5
	width: Screen.width - 50
	knobSize: 25
	backgroundColor: "rgba(255,255,255,0.5)"
	x: 25
	maxY: Screen.height - 30
slider.fill.backgroundColor = "#fff"

# add interval points to the slider
applyIncrements slider, options
