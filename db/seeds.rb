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
		{title: 'Sidekick', product_img_url: '/assets/products/140_sidekick.jpg', product_url: 'http://www.hu-friedy.com/innovation/innovation.aspx?alias=sidekick', category_id: '1'},
		{title: 'Swerv', product_img_url: '/assets/products/180_SWERV.jpg', product_url: 'http://www.friendsofhu-friedy.com/featured/SWERV3.asp', category_id: '1'},
		{title: 'Cavitron Unit', product_img_url: '/assets/products/170_cavitron_unit.jpg', product_url: 'http://professional.dentsply.com/cavitron/', category_id: '1'},
		{title: 'Maskenomics', product_img_url: '/assets/products/140_maskenomics.jpeg', product_url: 'http://www.dentrek.com/console/flashConsole.asp?x_slidetype=4&x_classid=%2087&x_url=http%3A//www.crosstex.com/productguide.asp%3Fmycat1%3Dcat1%26mycat2%3Dcat1_1%26mycat3%3Dcat1_1_1&dummy=1303849285528', category_id: '1'},
		{title: 'Surefit', product_img_url: '/assets/products/140_surefit.jpeg', product_url: 'http://www.crosstex.com/productguide.asp?mycat1=cat1&mycat2=cat1_1&mycat3=cat1_1_1', category_id: '1'},
		{title: 'Tool Tray', product_img_url: '/assets/products/150_ToolTray.jpg', product_url: 'http://www.theblueboa.com/', category_id: '1'},
		{title: 'To Go Probe', product_img_url: '/assets/products/166_to_go_probe.jpeg', product_url: 'http://www.floridaprobe.com/downloads.htm', category_id: '1'},
		{title: 'Boomer', product_img_url: '/assets/products/200_Boomer-NBG.jpg', product_url: 'http://boomerthefootmouse.com/', category_id: '1'},
		{title: 'Dental Rat', product_img_url: '/assets/products/160_RAT_2_small.jpg', product_url: 'http://www.dentalrat.com/', category_id: '1'},
		{title: 'Nitrile Gloves', product_img_url: '/assets/products/130_prod_lg_dimensions_NL.jpg', product_url: 'http://www.aureliagloves.com/fitted.html', category_id: '1'},
		{title: 'Nitrile Gloves', product_img_url: '/assets/products/100_curve_full.jpg', product_url: 'http://www.cranberryusa.com/index/nitrile_gloves/curve_fitted_nitrile.html', category_id: '1'},
		{title: 'Microflex', product_img_url: '/assets/products/140_microflex.jpeg', product_url: 'http://www.microflex.com/', category_id: '1'},
		{title: 'NAME', product_img_url: '/assets/products/30_740000x.jpg', product_url: 'http://www.dentsply.com/default.aspx?pageid=500', category_id: '1'},
		{title: 'Oral Hygiene', product_img_url: '/assets/products/150_model112.jpg', product_url: 'http://www.nsk-nakanishi.co.jp/us/dental/product/oralhygiene/pr030402.html', category_id: '1'},
		{title: 'Handpiece', product_img_url: '/assets/products/70_Handpiece.jpg', product_url: 'http://www.midwest-rdh.com/', category_id: '1'},
		{title: 'Denticator', product_img_url: '/assets/products/200_denticator.jpg', product_url: 'http://www.denticator.com/products.php?pType=Handpieces', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/100_2pro.jpg', product_url: 'http://www.premusa.com/dental/newproducts.asp', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/200_lcod-logo.gif', product_url: 'http://online.lexi.com/crlsql/servlet/crlonline', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/130_th_79196.jpg', product_url: 'http://www.hagerworldwide.com/pages/dentalproducts/instruments/mirrors.html', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/120_Brewer.jpg', product_url: 'http://www.brewer-design.com/Distribution/productDetail.asp?pg=Dental&id=183', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/130_RGP.jpg', product_url: 'http://www.rgpergo.com/products.html', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/130_ErgoSureOperatorWelbow-support.jpg', product_url: 'http://www.dentalez.com/dentalez/dental-stools/ergosure-stools.html', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/130_C70D_Hybrid_Saddle.jpg', product_url: 'https://www.crownseating.com/C70D.html', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/150_molly_0044_crop_for_lori.jpg', product_url: 'http://evolutionchair.com/', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/190_Crescent_premiumBodyrestPad-2.jpg', product_url: 'http://www.crescentproducts.com/', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/180_xv1.jpg', product_url: 'http://www.orascoptic.com/xv1', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/159_revolutions_by_orascoptic.jpeg', product_url: 'http://www.orascoptic.com/frame-revolution', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/160_Safe-flo_HVE.jpg', product_url: 'http://www.safe-flo.com/index.htm', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/200_crosssectionclosed.jpg', product_url: 'http://safe-flo.com/index.htm', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/100_Free_form_Saliva_ejectors-big.jpg', product_url: 'http://crosstex.com/cleanersproductguide.asp?mycat1=cat3&mycat2=cat3_1_1&mycat3=cat3_1_1', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/100_Zirc_tray.jpg', product_url: 'http://www.zirc.com/eshop/10Expand.asp?ProductCode=20Z420I-X', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/197_isolite.jpeg', product_url: 'http://www.isolitesystems.com/', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/200_Simplicity_Hygiene_DelHead.jpg', product_url: 'http://www.dentalez.com/dentalez/dental-delivery-units/simplicity-hygiene-unit.html', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/200_Mr._thirsty.jpeg', product_url: 'http://zirc.com/index.asp', category_id: '1'},
		{title: 'NAME', product_img_url: 'http://judybendit.com/images/240_ergovac.jpg', product_url: 'http://www.hagerworldwide.com/ergo-vac/view/productdetails/virtuemart_product_id/232/virtuemart_category_id/53', category_id: '1'},

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

		{title: 'Gripmaster', product_img_url: '/assets/products/130_gripmaster-1.jpg', product_url: 'http://www.prohands.net/exercise/', category_id: '3'},
		{title: 'Prohand by Gripmaster', product_img_url: '/assets/products/160_prohand_by_gripmaster.jpg', product_url: 'http://www.prohands.net/products/', category_id: '3'},
		{title: 'Mini Web', product_img_url: '/assets/products/161_mini_web.jpeg', product_url: 'http://www.pwrwebintl.com/', category_id: '3'},
		{title: 'PowerPutty', product_img_url: '/assets/products/170_PowerPuttyF06.jpg', product_url: 'http://www.powerputty.com/', category_id: '3'},
		{title: 'Muscle Angle', product_img_url: '/assets/products/170_muscle_angle.jpeg', product_url: 'http://www.muscleangelmassagers.com/', category_id: '3'},
		{title: 'Handmaster', product_img_url: '/assets/products/177_handmaster.jpg', product_url: 'http://www.handmasterplus.com/', category_id: '3'},

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