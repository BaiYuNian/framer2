feed = new PageComponent
	width: 375
	height: 812
	image: "images/feed.png"
#关注和热门横滑 	
feed.scrollVertical = false
# feed.content.draggable.enabled = false

sf = new PageComponent
	width: 375
	height: 812
	backgroundColor: "f2f2f2"

sf.scrollVertical = false	

	


fllow = new Layer
	image: "images/fllow.png"
	width: 375
	height: 812
hot = new Layer
	image: "images/hot.png"
	width: 375
	height: 812
storyclick = new Layer
	superLayer:feed
	width: 30
	height: 30
	x:13
	y:50
	backgroundColor:"transparent"
	
nav1 = new Layer
	width: 375
	height: 89
	image: "images/nav1.png"
	parent:feed	
	
# second = new PageComponent	
# 	width: Screen.width
# 	height: 740
# 	y: 134
# 	parent: hot
# second.scrollVertical = false	
# secondTab = new Layer
# 	width: 375
# 	height: 46
# 	y: 88
# 	parent: hot
# 	backgroundColor: "transparent"

footernav = new Layer
	superLayer: feed
	image: "images/footernav.png"
	width: 375
	height: 79
	y: 733

# arrow = new Layer
# 	image: "images/arrow.png"
# 	width: 6
# 	height: 4
# 	x: 172
# 	y: 64
# 	parent: feed
arrowcq	= new Layer
	width: 15
	height: 20
	x: 172
	y: 58
	backgroundColor: "transparent"
# 	superLayer: gzt	

	
	

	
	
关注 = new TextLayer
	text:"关注"
	fontSize: 18
	fontWeight: 500
	color: "#333333"
	padding: 
		top: 54
		left:134
	parent: feed
热门 = new TextLayer
	text:"热门"
	fontSize: 17
	color: "#939393"
	padding: 
		top: 54
		left:207
	parent: feed



	
# close1 = new Layer
# 	image: "images/close.png"
# 	width: 16
# 	height: 16
# 	x: 345
# 	y: 58
# 	parent: hott
# 	
# close = new Layer
# 	image: "images/close.png"
# 	width: 16
# 	height: 16
# 	x: 345
# 	y: 58
# 	parent: gzt	


		
#关注和热门点击切换模块 	
hottxt = new Layer
	parent: feed
	width: 60
	height: 30
	x: 190
	y: 50
	opacity: 0.00
fllowtxt = new Layer
	parent: feed
	width: 60
	height: 30
	x: 120
	y: 50
	opacity: 0.00	

secondTab = new Layer
	superLayer: hot
	width: 375
	height: 46
	y: 88
	backgroundColor: "white"
	
secondTab1 = new Layer
	superLayer: fllow
	width: 375
	height: 46
	y: 88
	backgroundColor: "white"	
	
# 热门页page
hotsecond = new PageComponent
	width: 375
	height: 700
	y: 134
	parent: hot

# feed.content.on Events.Click, ->
# 	print 1
hotsecond.scrollVertical = false

layer1 = new Layer
	image: "images/1.jpg"	
	width: 375
	height: 700
layer2 = new Layer
	image: "images/2.jpg"
	width: 375
	height: 700
layer3 = new Layer
	image: "images/3.jpg"
	width: 375
	height: 700
layer4 = new Layer
	image: "images/4.jpg"
	width: 375
	height: 700
layer5 = new Layer
	image: "images/5.jpg"
	width: 375
	height: 700	
layer6 = new Layer
	image: "images/6.jpg"
	width: 375
	height: 700
layer7 = new Layer
	image: "images/7.jpg"
	width: 375
	height: 700					
	
hotsecond.addPage layer1
hotsecond.addPage layer2
hotsecond.addPage layer3 
hotsecond.addPage layer4 
hotsecond.addPage layer5 
hotsecond.addPage layer6
hotsecond.addPage layer7

hotsecond.content.draggable.overdrag = false
hotsecond.scrollHorizontal = false

# 关注page
fllowsecond = new PageComponent
	width: 375
	height: 700
	y: 134
	parent: fllow

# feed.content.on Events.Click, ->
# 	print 1
fllowsecond.scrollVertical = false

layerf1 = new Layer
	image: "images/f1.jpg"	
	width: 375
	height: 700
layerf2 = new Layer
	image: "images/f2.jpg"
	width: 375
	height: 700
layerf3 = new Layer
	image: "images/f3.jpg"
	width: 375
	height: 700
layerf4 = new Layer
	image: "images/f4.jpg"
	width: 375
	height: 700
layerf5 = new Layer
	image: "images/f5.jpg"
	width: 375
	height: 700	
layerf6 = new Layer
	image: "images/f6.jpg"
	width: 375
	height: 700
layerf7 = new Layer
	image: "images/f7.jpg"
	width: 375
	height: 700					
	
fllowsecond.addPage layerf1
fllowsecond.addPage layerf2
fllowsecond.addPage layerf3 
fllowsecond.addPage layerf4 
fllowsecond.addPage layerf5 
fllowsecond.addPage layerf6
fllowsecond.addPage layerf7

fllowsecond.content.draggable.overdrag = false
fllowsecond.scrollHorizontal = false


#二级导航初始化
tabContentTexts = ["热门", "附近", "明星", "搞笑", "情感", "这就是街舞", "设计"]

tabContents = new Layer
	superLayer: secondTab
	height: 46
	backgroundColor: "white"

navd = new Layer
	superLayer: secondTab
	image: "images/navd.png"
	width:44
	height: 44
	y:1
	x:331
# 	parent: hot	 

rmbj = new Layer
	width: 375
	height: 44
	image: "images/rmbj.png"
	y: 0
	opacity: 0
	parent: secondTab
		
rmbj.placeBehind(add)	
	
add = new Layer
	superLayer: secondTab
	image: "images/add.png"
	width: 15
	height: 15
	x: 346

add.centerY()
# 	parent: hot	
# tabContents.placeBefore(secondTabBg)

for i in [0...tabContentTexts.length]
	contentsText = new TextLayer
		fontSize: 15
		color: "#333333"
		text: tabContentTexts[i]
	
	contents = new Layer
		height: 46
		width: contentsText.width + 32
		backgroundColor: "transparent"
		
	cx = 0
	if i >= 0
		for num in [0...i]
			cx += tabContents.subLayers[num].width
	
	contentsText.superLayer = contents
	contentsText.center()
	contents.superLayer = tabContents
	contents.x = cx


secondTab.clip = true
tabContents.width = tabContents.subLayers[tabContentTexts.length - 1].x + tabContents.subLayers[tabContentTexts.length - 1].width

tabContents.draggable.enabled = true
tabContents.draggable.speedY = 0

tabContents.draggable.constraints = {
	x: 375 - 40 - tabContents.width
	y: 0
	width: 2 * tabContents.width - (375 - 40)
	height: 80
}

#关注二级导航初始化
tabContentTexts1 = ["全部关注", "最新微博", "特别关注", "好友圈", "原创", "名人", "视频"]

tabContents1 = new Layer
	superLayer: secondTab1
	height: 46
	backgroundColor: "white"

navd1 = new Layer
	superLayer: secondTab1
	image: "images/navd.png"
	width:44
	height: 44
	y:1
	x:331
# 	parent: hot	 	

	
gzbj = new Layer
	width: 375
	height: 44
	image: "images/gzbj.png"
	y: 2
	opacity: 0.00
	parent: secondTab1	
gzbj.placeBehind(add1)

add1 = new Layer
	superLayer: secondTab1
	image: "images/add.png"
	width: 15
	height: 15
	x: 346
	
add1.centerY()
# 	parent: hot	
# tabContents.placeBefore(secondTabBg)

for i in [0...tabContentTexts1.length]
	contentsText1 = new TextLayer
		fontSize: 15
		color: "#333333"
		text: tabContentTexts1[i]
	
	contents1 = new Layer
		height: 46
		width: contentsText1.width + 32
		backgroundColor: "transparent"
		
	cx = 0
	if i >= 0
		for num in [0...i]
			cx += tabContents1.subLayers[num].width
	
	contentsText1.superLayer = contents1
	contentsText1.center()
	contents1.superLayer = tabContents1
	contents1.x = cx


secondTab1.clip = true
tabContents1.width = tabContents1.subLayers[tabContentTexts1.length - 1].x + tabContents1.subLayers[tabContentTexts1.length - 1].width

tabContents1.draggable.enabled = true
tabContents1.draggable.speedY = 0

tabContents1.draggable.constraints = {
	x: 375 - 40 - tabContents1.width
	y: 0
	width: 2 * tabContents1.width - (375 - 40)
	height: 80
}

# 二级导航控制
tabContents.subLayers[0].subLayers[0].color = "#ff8200"
tabContents.subLayers[0].subLayers[0].fontWeight = 500

pageIndexEnd = tabContentTexts.length

textChange = (page) ->
	tabContentIndex = page
	if 0 <= tabContentIndex <= pageIndexEnd - 1
		for i in [0...pageIndexEnd]
			if i == tabContentIndex
				tabContents.subLayers[i].subLayers[0].color = "#ff8200"
				tabContents.subLayers[i].subLayers[0].fontWeight = 500
			else
				tabContents.subLayers[i].subLayers[0].color = "333333"
				tabContents.subLayers[i].subLayers[0].fontWeight = 400
		
		if 187 <= tabContents.subLayers[tabContentIndex].x + tabContents.subLayers[tabContentIndex].width / 2 && tabContents.width - (tabContents.subLayers[tabContentIndex].x + tabContents.subLayers[tabContentIndex].width / 2) >= 187 - 40
			tabContents.animate
				x: 187 - (tabContents.subLayers[tabContentIndex].x + tabContents.subLayers[tabContentIndex].width / 2)
				options: 
					time: 0.5
					curve: Spring(damping: 1)
		else if tabContents.subLayers[tabContentIndex].x + tabContents.subLayers[tabContentIndex].width / 2 < 187
			tabContents.animate
				x: 0
				options: 
					time: 0.5
					curve: Spring(damping: 1)
		else
			tabContents.animate
				x: 375 - tabContents.width - 40
				options: 
					time: 0.5
					curve: Spring(damping: 1)

# 关注二级导航控制
tabContents1.subLayers[0].subLayers[0].color = "#ff8200"
tabContents1.subLayers[0].subLayers[0].fontWeight = 500

pageIndexEnd1 = tabContentTexts1.length

textChange1 = (page1) ->
	tabContentIndex1 = page1
	if 0 <= tabContentIndex1 <= pageIndexEnd1 - 1
		for i in [0...pageIndexEnd1]
			if i == tabContentIndex1
				tabContents1.subLayers[i].subLayers[0].color = "#ff8200"
				tabContents1.subLayers[i].subLayers[0].fontWeight = 500
			else
				tabContents1.subLayers[i].subLayers[0].color = "333333"
				tabContents1.subLayers[i].subLayers[0].fontWeight = 400
		
		if 187 <= tabContents1.subLayers[tabContentIndex1].x + tabContents1.subLayers[tabContentIndex1].width / 2 && tabContents1.width - (tabContents1.subLayers[tabContentIndex1].x + tabContents1.subLayers[tabContentIndex1].width / 2) >= 187 - 40
			tabContents1.animate
				x: 187 - (tabContents1.subLayers[tabContentIndex1].x + tabContents1.subLayers[tabContentIndex1].width / 2)
				options: 
					time: 0.5
					curve: Spring(damping: 1)
		else if tabContents1.subLayers[tabContentIndex1].x + tabContents1.subLayers[tabContentIndex1].width / 2 < 187
			tabContents1.animate
				x: 0
				options: 
					time: 0.5
					curve: Spring(damping: 1)
		else
			tabContents1.animate
				x: 375 - tabContents1.width - 40
				options: 
					time: 0.5
					curve: Spring(damping: 1)

hotsecond.on "change:currentPage", ->
	page = hotsecond.content.subLayers.indexOf(hotsecond.currentPage)	
	textChange(page)
	
fllowsecond.on "change:currentPage", ->
	page1 = fllowsecond.content.subLayers.indexOf(fllowsecond.currentPage)	
	textChange1(page1)	

# 补丁辣鸡代码
tabContents.subLayers[0].on Events.Click, ->
	hotsecond.snapToPage(layer1)

tabContents.subLayers[1].on Events.Click, ->
	hotsecond.snapToPage(layer2)

tabContents.subLayers[2].on Events.Click, ->
	hotsecond.snapToPage(layer3)

tabContents.subLayers[3].on Events.Click, ->
	hotsecond.snapToPage(layer4)

tabContents.subLayers[4].on Events.Click, ->
	hotsecond.snapToPage(layer5)

tabContents.subLayers[5].on Events.Click, ->
	hotsecond.snapToPage(layer6)

tabContents.subLayers[6].on Events.Click, ->
	hotsecond.snapToPage(layer7)	

# 关注补丁辣鸡代码
tabContents1.subLayers[0].on Events.Click, ->
	fllowsecond.snapToPage(layerf1)

tabContents1.subLayers[1].on Events.Click, ->
	fllowsecond.snapToPage(layerf2)

tabContents1.subLayers[2].on Events.Click, ->
	fllowsecond.snapToPage(layerf3)

tabContents1.subLayers[3].on Events.Click, ->
	fllowsecond.snapToPage(layerf4)

tabContents1.subLayers[4].on Events.Click, ->
	fllowsecond.snapToPage(layerf5)

tabContents1.subLayers[5].on Events.Click, ->
	fllowsecond.snapToPage(layerf6)

tabContents1.subLayers[6].on Events.Click, ->
	fllowsecond.snapToPage(layerf7)	

feed.addPage fllow
feed.addPage hot


feed.parent = scroll.content
feed.content.draggable.overdrag = false

#渐变条 
container = new Layer
	superLayer: feed
	width: 119
	height: 36
	backgroundColor: "transparent"
	x: 134
	y: 56



tabMark = new Layer
	superLayer: container
	width: 36
	height: 3
	borderRadius: 3
	backgroundColor: "transparent"
	x: 0
	y: 26
	
	clip: true

blue = new Gradient
	start: "#FE9600"
	end: "#FF3900"
	angle: 90

tabColorPad = new Layer
	superLayer: tabMark
	gradient: blue
	width: 190
	height: 3

markScrollControl = (controllerX) ->
	controllerX = controllerX - 375
	value = Utils.modulate(controllerX, [-750, -375], [-750, 0])
	
	if value <= 0 && value >= -375
		tabMark.width = Utils.modulate(value, [0, -375], [36, 102])
		tabMark.x = 0
		tabColorPad.x = 0
		
	else if value < -375 && value >= -750
		tabMark.width = Utils.modulate(value, [-375, -750], [102, 36])
		tabMark.x = Utils.modulate(value, [-375, -750], [6, 74])
		tabColorPad.x = Utils.modulate(value, [-375, -750], [0, -71])

#关注和热门文字切换状态 
feed.content.on "change:x", ->
	markScrollControl(feed.content.x)
	if feed.content.x <= -100
		热门.fontSize = 18
		热门.color = "#333333"
		热门.fontWeight = 500
		热门.y = -1
		关注.fontSize = 17
		关注.color = "#939393"
		关注.fontWeight = 400
		关注.y = 0
# 		arrow.opacity = 0
feed.content.on "change:x", ->		
	if feed.content.x >= -170
		关注.fontSize = 18
		关注.color = "#333333"
		关注.fontWeight = 500
		关注.y = -1
		热门.fontSize = 17
		热门.color = "#939393"
		热门.fontWeight = 400
		热门.y = 0
# 		arrow.opacity = 100	

# #关注和热门点击切换模块
hottxt.on Events.Click, (e) ->
	feed.snapToPage(hot,true,curve:Bezier.easeOut,time: .3)
	
fllowtxt.on Events.Click, (e) ->
	feed.snapToPage(fllow,true,curve:Bezier.easeOut,time: .3)	


# for i in [1..7]
# 	card = new Layer
# 		parent : second.content
# 		image:"images/1.jpg"
# 		width: second.width
# 		height: 740
# 		y: 2

		
		

# tabContentTexts = ["热门", "附近", "新鲜事", "榜单", "设计", "情感", "北京"]
# 
# pageIndexEnd = 2 + (tabContentTexts.length - 1) - 1
# 
# tabContents = new Layer
# 	superLayer: secondTab
# 	height: 46
# 	backgroundColor: "transparent"
# 
# tabContents.placeBefore(hot.secondTabBg)
# 
# for i in [0...tabContentTexts.length]
# 	contentsText = new TextLayer
# 		fontSize: 15
# 		color: "#333333"
# 		text: tabContentTexts[i]
# 	
# 	contents = new Layer
# 		height: 46
# 		width: contentsText.width + 32
# 		backgroundColor: "transparent"
# 		
# 	cx = 0
# 	if i >= 0
# 		for num in [0...i]
# 			cx += tabContents.subLayers[num].width
# 	
# 	contentsText.superLayer = contents
# 	contentsText.center()
# 	contents.superLayer = tabContents
# 	contents.x = cx
# 
# secondTab.clip = true
# tabContents.width = tabContents.subLayers[tabContentTexts.length - 1].x + tabContents.subLayers[tabContentTexts.length - 1].width
# 
# tabContents.draggable.enabled = true
# tabContents.draggable.speedY = 0
# 
# tabContents.draggable.constraints = {
# 	x: 375 - 40 - tabContents.width
# 	y: 0
# 	width: 2 * tabContents.width - (375 - 40)
# 	height: 80
# }
# 
# tabContents.subLayers[0].subLayers[0].color = "#ff8200"
# tabContents.subLayers[0].subLayers[0].fontWeight = 500
# 
# textChange = (page) ->
# 	tabContentIndex = page - 2
# 	if 0 <= tabContentIndex <= pageIndexEnd - 1
# 		for i in [0...pageIndexEnd]
# 			if i == tabContentIndex
# 				tabContents.subLayers[i].subLayers[0].color = "#ff8200"
# 				tabContents.subLayers[i].subLayers[0].fontWeight = 500
# 			else
# 				tabContents.subLayers[i].subLayers[0].color = "333333"
# 				tabContents.subLayers[i].subLayers[0].fontWeight = 400
# 		
# 		if 187 <= tabContents.subLayers[tabContentIndex].x + tabContents.subLayers[tabContentIndex].width / 2 && tabContents.width - (tabContents.subLayers[tabContentIndex].x + tabContents.subLayers[tabContentIndex].width / 2) >= 187 - 40
# 			tabContents.animate
# 				x: 187 - (tabContents.subLayers[tabContentIndex].x + tabContents.subLayers[tabContentIndex].width / 2)
# 				options: 
# 					time: 0.5
# 					curve: Spring(damping: 1)
# 		else if tabContents.subLayers[tabContentIndex].x + tabContents.subLayers[tabContentIndex].width / 2 < 187
# 			tabContents.animate
# 				x: 0
# 				options: 
# 					time: 0.5
# 					curve: Spring(damping: 1)
# 		else
# 			tabContents.animate
# 				x: 375 - tabContents.width - 40
# 				options: 
# 					time: 0.5
# 					curve: Spring(damping: 1)
# 					
# 					
# 					
# scrollControllerPage = new PageComponent
# 	x: 0
# 	y: 134
# 	width: 375
# 	height: 740
# 	parent: hot
# scrollControllerPage.scrollVertical = false
# 
# 
# 
# for layers in skt.slideController.subLayers
# 	layers.opacity = 0
# 	scrollControllerPage.addPage(layers, "right")					
# 
# 
# tabContents.subLayers[0].on Events.Click, ->
# 	scrollControllerPage.snapToPage(skt.slidePage2)
# 
# tabContents.subLayers[1].on Events.Click, ->
# 	scrollControllerPage.snapToPage(skt.slidePage3)
# 
# tabContents.subLayers[2].on Events.Click, ->
# 	scrollControllerPage.snapToPage(skt.slidePage4)
# 
# tabContents.subLayers[3].on Events.Click, ->
# 	scrollControllerPage.snapToPage(skt.slidePage5)
# 
# tabContents.subLayers[4].on Events.Click, ->
# 	scrollControllerPage.snapToPage(skt.slidePage6)
# 
# tabContents.subLayers[5].on Events.Click, ->
# 	scrollControllerPage.snapToPage(skt.slidePage7)
# 
# tabContents.subLayers[6].on Events.Click, ->
# 	scrollControllerPage.snapToPage(skt.slidePage8)
# 					
# 
# 					
# scrollControllerPage.content.on "change:x", ->
# 	controllerX = scrollControllerPage.content.x
# 	if -750 < controllerX <= -375
# # 		skt.storyScheme.x = -375
# 		skt.feedScheme.x = 0
# 		skt.follow.x = controllerX + 375
# 		skt.hotFeed.x = controllerX + 750
# 		skt.secondTab.x = controllerX + 750
# 		markScrollControl(controllerX)
# 	
# 	if -3000 < controllerX <= -750
# 		skt.findScheme.x = 375
# 		skt.feedScheme.x = 0
# 		skt.secondTab.x = 0
# 		skt.follow.x = -375
# 		skt.hotFeed.x = controllerX + 750
# 		
# 	scrollControllerPage.on "change:currentPage", ->
# 	page = scrollControllerPage.content.subLayers.indexOf(scrollControllerPage.currentPage)	
# 	textChange(page)						

arrowcq.placeBefore(fllowtxt)
container.placeBehind(gzt)

# background.sendToBack()

story = new Layer
	image:"images/story.png"
	width: 375
	height: 812
	
story1 = new Layer
	image:"images/story.png"
	width: 375
	height:812
story1.visible = false	

sf.addPage story
sf.addPage feed	
sf.content.draggable.overdrag = false

feed.on "change:currentPage", ->
	if this.currentPage == hot
		sf.content.draggable.enabled = false
	else if this.currentPage == fllow
		sf.content.draggable.enabled = true



# 关注页二级弹出

navd1.on Events.Click, (e) ->

	feed.scrollHorizontal = false
	sf.scrollHorizontal = false
	
	add1.animate
		rotation: 45
		options: 
			curve: Bezier.ease
			time: 0.2
	gzbj.animate
		opacity: 1.00
		options: 
			curve: Bezier.ease
			time: 0.1		
	gzt.animate
		y : 132
		options: 
			curve: Bezier.ease
			time: 0.2
	background.animate
		y: 620
		opacity: 0.3	
		options: 
			curve: Bezier.ease
			time: 0.5
	backgroundnav.animate
		opacity: 0.3	
		options: 
			curve: Bezier.ease
			time: 0.5		
			

# 	background.sendToBack()
# 	fllowsecond.content.ignoreEvents = false
add1.rot = false

navd1.on Events.Click, (e) ->
	if add1.rot
		add1.animate
			rotation: 45
		add1.rot = false
		feed.scrollHorizontal = true
		sf.scrollHorizontal = true
# 		print 1
	else
		add1.rot = true
# 		print 2	
	add1.animate
		rotation: 0
		options: 
			curve: Bezier.ease
			time: 0.2
	gzbj.animate
		opacity: 0
		options: 
			curve: Bezier.ease
			time: 0.1		
	gzt.animate
		y : -648
		options: 
			curve: Bezier.ease
			time: 0.3
	background.animate
		y: 0
		opacity: 0	
		options: 
			curve: Bezier.ease
			time: 0.2
	backgroundnav.animate
		opacity: 0	
		options: 
			curve: Bezier.ease
			time: 0.2	




# navd1.on Events.Click, (e) ->
# # 	container.visible = false
# 	background.placeBehind(gzt)
# 	sf.content.ignoreEvents = true
# 	sf.scrollHorizontal = false
# 	feed.scrollHorizontal = false
# 	gzt.animate
# 		y : 0
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2
# 	background.animate
# 		y: 620
# 		opacity: 0.3	
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.3
# 
# close.on Events.Click, (e) ->
# 	background.sendToBack()
# 	sf.content.ignoreEvents = false
# 	sf.scrollHorizontal = true
# 	feed.scrollHorizontal = true
# 	gzt.animate
# 		y : -648
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2
# 	background.animate
# 		opacity: 0	
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2
# 			
# background.on Events.Click, (e) ->
# 	background.sendToBack()
# 	sf.content.ignoreEvents = false
# 	sf.scrollHorizontal = true
# 	feed.scrollHorizontal = true
# 	gzt.animate
# 		y : -648
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2
# 	background.animate
# 		opacity: 0	
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2			

# 热门页二级弹出

navd.on Events.Click, (e) ->

	feed.scrollHorizontal = false
	sf.scrollHorizontal = false
	
	add.animate
		rotation: 45
		options: 
			curve: Bezier.ease
			time: 0.2
	rmbj.animate
		opacity: 1.00
		options: 
			curve: Bezier.ease
			time: 0.1		
	hott.animate
		y : 132
		options: 
			curve: Bezier.ease
			time: 0.2
	background1.animate
		y: 620
		opacity: 0.3	
		options: 
			curve: Bezier.ease
			time: 0.5
	backgroundnav1.animate
		opacity: 0.3	
		options: 
			curve: Bezier.ease
			time: 0.5	
			
add.rot = false

navd.on Events.Click, (e) ->
	if add.rot
		add.animate
			rotation: 45
		add.rot = false
		feed.scrollHorizontal = true
		sf.scrollHorizontal = true
# 		print 1
	else
		add.rot = true
# 		print 2	
	add.animate
		rotation: 0
		options: 
			curve: Bezier.ease
			time: 0.2
	rmbj.animate
		opacity: 0
		options: 
			curve: Bezier.ease
			time: 0.1		
	hott.animate
		y : -648
		options: 
			curve: Bezier.ease
			time: 0.3
	background1.animate
		y: 0
		opacity: 0	
		options: 
			curve: Bezier.ease
			time: 0.2
	backgroundnav1.animate
		opacity: 0	
		options: 
			curve: Bezier.ease
			time: 0.2		

# navd.on Events.Click, (e) ->
# # 	container.visible = false
# 	background.placeBehind(hott)
# 	hotsecond.content.ignoreEvents = true
# 	sf.scrollHorizontal = false
# 	feed.scrollHorizontal = false
# 	hott.animate
# 		y : 0
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2
# 	background.animate
# 		y: 620
# 		opacity: 0.3	
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.3
# 
# close1.on Events.Click, (e) ->
# 	background.sendToBack()
# 	hotsecond.content.ignoreEvents = false
# 	sf.scrollHorizontal = true
# 	feed.scrollHorizontal = true
# 	hott.animate
# 		y : -648
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2
# 	background.animate
# 		opacity: 0	
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2
# 			
# background.on Events.Click, (e) ->
# 	background.sendToBack()
# 	hotsecond.content.ignoreEvents = false
# 	sf.scrollHorizontal = true
# 	feed.scrollHorizontal = true
# 	hott.animate
# 		y : -648
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2
# 	background.animate
# 		opacity: 0	
# 		options: 
# 			curve: Bezier.ease
# 			time: 0.2			


# nav = new Layer
# 	superLayer: feed
# 	image: "images/nav.png"
# 	width: 375
# 	height: 44


	
tabContents1.draggable.propagateEvents = false	
tabContents.draggable.propagateEvents = false
	

background = new Layer
	backgroundColor: "black"	
	opacity: 0
	width: 375
	height: 812
	parent:fllow
background1 = new Layer
	backgroundColor: "black"	
	opacity: 0
	width: 375
	height: 812
	parent: hot
backgroundnav = new Layer
	backgroundColor:"black"
	width: 375
	height: 79
	opacity: 0
	y: Align.bottom	
backgroundnav1 = new Layer
	backgroundColor:"black"
	width: 375
	height: 79
	opacity: 0
	y: Align.bottom			
	
	
	
gzt = new Layer
	image: "images/gzt.png"
	x: 0
	y: -648
	width: 375
	height: 516
	superLayer: fllow
	
hott = new Layer
	image: "images/hott.png"
	x: 0
	y: -648
	width: 375
	height: 516
	superLayer: hot
			
# 	Utils.delay 0.1, ->			
# 		container.visible = true			


# storyclose = new Layer
# 	superLayer: story1
# 	width: 30
# 	height: 30
# 	x:20
# 	y:70
# 	backgroundColor:"transparent"
	
# storyclose1 = new Layer
# 	superLayer: story
# 	width: 30
# 	height: 30
# 	x:20
# 	y:70
# 	backgroundColor:"transparent"	
	
		
# 	
# 	

		
# storyclick.on Events.Click, (e) ->
# 	story1.visible = true
	
sf.snapToPage(feed,false)
	
Framer.Extras.Hints.disable()