return {
	anim = {
		['eating']     = {dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp'},
		['drinking']   = {dict = 'mp_player_intdrink', clip = 'loop_bottle'},
		['clothes-top'] = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
		['bandage'] = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
	},
	prop = {
		['burger']   = {model = `prop_cs_burger_01`, pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0)},
		['sandwich'] = {model = `prop_sandwich_01`, pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0)},
		['hotdog']   = {model = `prop_cs_hotdog_01`, pos = vec3(0.06, -0.01, -0.03), rot = vec3(60.0, -90.0, 0.0)},
		['coffee-1'] = {model = `ng_proc_coffee_01a`, pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0)},
		['water-bottle'] = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
		['cola-1']   = {model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5)},
		['socket']   = {model = `prop_rolled_sock_02`, bone = 58866, pos = vec3(0.12, -0.02, 0.001), rot = vec3(-130.0, 0.0, 0.0)},
	}
}