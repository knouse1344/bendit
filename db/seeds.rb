# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create([
	{cat_name: 'Ergonomic Products'},
	{cat_name: 'Emerging Technologies'},
	{cat_name: 'Hand Strengthening Devices'},
	{cat_name: 'Plaque Assessment Technologies'},
	{cat_name: 'Caries Detection Devices'},
	{cat_name: 'New Instruments'},
	{cat_name: 'Sharpening Devices'},
	{cat_name: 'New Toothbrush Ideas'},
	{cat_name: 'Toothpaste Options'},
	{cat_name: 'Mouth Rinses'},

	])

Product.create([		
		{title: 'Gripmaster', product_img_url: '/assets/products/130_gripmaster-1.jpg', product_url: 'http://www.prohands.net/exercise/', category_id: '3'},
		{title: 'Prohand by Gripmaster', product_img_url: '/assets/products/160_prohand_by_gripmaster.jpg', product_url: 'http://www.prohands.net/products/', category_id: '3'},
		{title: 'Mini Web', product_img_url: '/assets/products/161_mini_web.jpeg', product_url: 'http://www.pwrwebintl.com/', category_id: '3'},
		{title: 'PowerPutty', product_img_url: '/assets/products/170_PowerPuttyF06.jpg', product_url: 'http://www.powerputty.com/', category_id: '3'},
		{title: 'Muscle Angle', product_img_url: '/assets/products/170_muscle_angle.jpeg', product_url: 'http://www.muscleangelmassagers.com/', category_id: '3'},
		{title: 'Handmaster', product_img_url: '/assets/products/177_handmaster.jpg', product_url: 'http://www.handmasterplus.com/', category_id: '3'},

		{title: 'Enamel Provarnish', product_img_url: '/assets/products/100_enamelprovarnish2.jpg', product_url: 'http://www.premusa.com/dental/newproducts.asp', category_id: '2'},
		{title: 'Enamel Pro Reference', product_img_url: '/assets/products/130_Enamel_Pro_Ref0.jpg', product_url: 'http://www.premusa.com/dental/hygiene.asp#enamelpro', category_id: '2'},
		{title: 'Complete Care', product_img_url: '/assets/products/270_complete_care.jpg', product_url: 'http://www.armandhammer.com/personal-care/toothpaste/Products/arm-and-hammer-complete-care-extra-whitening-with-baking-soda-and-peroxide.aspx', category_id: '2'},
		{title: 'Colgate Pro Relief', product_img_url: '/assets/products/307_colgate_pro_relief.jpeg', product_url: 'http://colgate-sensitive-pro-relief.colgateprofessional.com.au/products/Colgate-Sensitive-Pro-Relief-Desensitising-Polishing-Paste/details', category_id: '2'},
		{title: 'GC MI Paste', product_img_url: '/assets/products/145_GC_MI_paste.jpg', product_url: 'http://www.gcamerica.com/products/preventive/MI_Paste/', category_id: '2'},
		{title: 'Sensodyne Polish', product_img_url: '/assets/products/150_sensodyne_polish_group.jpg', product_url: 'http://www.dentsply.com/en/solutions/us/preventive/prophy-paste-and-toothpaste/nupro%C2%AE-sensodyne%C2%AE-prophylaxis-paste-with-novamin%C2%AE/', category_id: '2'},
		{title: 'Sensodyne Toothpaste', product_img_url: '/assets/products/147_sensodyne-nupro-toothpaste-revised_General-Brand.jpg', product_url: 'http://www.dentsply.com/en/solutions/us/preventive/prophy-paste-and-toothpaste/sensodyne%C2%AE-nupro%C2%AE-5000-ppm-fluoride-ion-toothpaste-with-novamin%C2%AE/', category_id: '2'},
		{title: 'Spry', product_img_url: '/assets/products/160_spry.jpg', product_url: 'http://www.xlear.com/default.aspx', category_id: '2'},
		{title: 'Ice Chips', product_img_url: '/assets/products/210_ice_chips.jpg', product_url: 'http://www.icechipscandy.com/', category_id: '2'},
		{title: 'Nuvora', product_img_url: '#', product_url: 'http://www.nuvorainc.com/', category_id: '2'},
		{title: 'Trident with XtraCare', product_img_url: '#', product_url: 'http://www.tridentoralcare.com/#/advancements/research/', category_id: '2'},
		{title: 'Trident with Xylitol', product_img_url: '#', product_url: 'http://www.tridentoralcare.com/#/advancements/xylitol/', category_id: '2'},
		{title: 'Splash Screen', product_img_url: '#', product_url: 'http://www.tridentoralcare.com/#/advancements/moa-video/', category_id: '2'},
		{title: 'Basic Bites', product_img_url: '#', product_url: 'http://www.basicbites.com/', category_id: '2'},
		{title: 'Oracoat', product_img_url: '#', product_url: 'http://www.oracoat.com/', category_id: '2'},
		{title: 'Enamel Provarnish', product_img_url: '/assets/products/100_1350sample.jpg', product_url: 'http://www.hagerworldwide.com/XYLITOL.HTML', category_id: '2'},

		{title: 'Saliva Check Buffer', product_img_url: '/assets/products/200_GC_buffer.jpg', product_url: 'http://www.gcamerica.com/products/preventive/Saliva_Check_BUFFER/', category_id: '4'},
		{title: 'Saliva Check Mutans', product_img_url: '/assets/products/160_GC_mutans.jpg', product_url: 'http://www.gcamerica.com/products/preventive/SALIVA-CHECK_MUTANS/', category_id: '4'},
		{title: 'Ivoclar Test', product_img_url: '/assets/products/170_ivoclar_test.jpg', product_url: 'http://www.ivoclarvivadent.us/en-us/all-products/products/prevention-care/caries-risk/crt-bacteria', category_id: '4'},
		{title: 'Caries ID', product_img_url: '/assets/products/160_mainPhoto_requestSlides.jpg', product_url: 'http://www.cariesid.com/', category_id: '5'},
		{title: 'Diagnodent Pen', product_img_url: '/assets/products/160_diagnodent_pen.jpg', product_url: 'http://www.kavousa.com/Default.aspx?navid=552871&oid=009&lid=Us', category_id: '5'},
		{title: 'Rub Off', product_img_url: '/assets/products/170_ruboff32.jpg', product_url: 'http://www.soprolife.com/', category_id: '5'},
		{title: 'Spectra With Monitor', product_img_url: '/assets/products/150_Spectra_w_Monitor.jpg', product_url: 'http://www.airtechniques.com/products/spectra-caries-detection-aid.html', category_id: '5'},
		{title: 'Cariescan', product_img_url: '/assets/products/89_Cariescan.jpg', product_url: 'http://us.cariescan.com/', category_id: '5'},
		{title: 'Canary', product_img_url: '/assets/products/213_canary.jpg', product_url: 'http://www.thecanarysystem.com/index.php', category_id: '5'}
	])