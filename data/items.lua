local Items = {
	Containers = {
		IsActivate = true,
		List = {
			['paperbag'] = {
				label = 'Sac en papiers',
				weight = 1,
				stack = false,
				close = false,
				consume = 0
			},
			['key_rings'] = {
				label = 'Porte-clés',
				description = 'Ranger vos différentes clés',
				weight = 5,
				stack = false,
				consume = 0
			},
			['wallet'] = {
				label = 'Porte-feuille',
				description = 'Ranger vos papiers et votre argent',
				weight = 250,
				stack = false,
				consume = 0
			},
			['pizzabox'] = {
				label = 'Boite à pizza',
				description = 'Permet de tenir une pizza à l\'abri',
				weight = 200,
				stack = false,
				close = false,
				consume = 0
			},
		}
	},
	Required = {
		IsActivate = true,
		List = {
			['document'] = {
				label = 'Document',
				weight = 10,
				stack = false,
				description = ""
			},
			['id_card'] = {
				label = 'ID Card',
				weight = 10,
				stack = false,
				description = ""
			},
			['money'] = {
				label = 'Argent',
			},
			['black_money'] = {
				label = 'Argent sale',
			},
			['identification'] = {
				label = 'Carte d\'identité',
			},
			['firearms'] = {
				label = "Permis port d'armes",
				weight = 10,
				stack = false,
			},
			['driving'] = {
				label = "Permis de conduire",
				weight = 10,
				stack = false,
			},
			['mastercard'] = {
				label = 'Mastercard',
				stack = false,
				weight = 10,
			},
			['receipt'] = {
				label = 'Ticket de caisse',
				weight = 20,
				stack = false,
				close = true,
				-- description = nil,
				buttons = {
					{
						label = 'Voir ticket',
						action = function(slot)
							TriggerEvent('envi-receipts:showReceiptToClosestPlayer', slot)
						end
					}
				}
			},
			['payment_terminal'] = {
				label = 'Receipt Printer',
				weight = 2000, 
				stack = false,
				close = true,
				description = 'Un appareil pratique pour imprimer des reçus en déplacement!',
				buttons = {
					{
						label = 'Imprimer ticket',
						action = function()
							TriggerEvent('envi-receipts:quickPrint')
						end
					}
				}
			}
		}
	},
	Keys = {
		IsActivate = true,
		List = {
			['motelkey'] = {
				label = 'Clés chambre motel',
				weight = 10,
				stack = false,
			}
		}
	},
	Food = {
		IsActivate = true,
		List = {
			['mustard'] = {
				label = 'Moutarde',
				weight = 500,
				client = {
					status = { hunger = 25000, thirst = 25000 },
					anim = 'drinking',
					prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
					usetime = 2500,
					-- notification = 'Vous... avez bu de la moutarde'
				}
			},
			['bread'] = {
				label = 'Pain',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = 'burger',
					usetime = 2500,
					notification = 'Vous avez mangé un délicieux Pain'
				},
			},
			['sandwich'] = { -- A simple sandwich for a simple day
				label = 'Sandwich',
				weight = 350,
				stack = true,
				close = true,
				description = "A simple sandwich for a simple day",
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = 'sandwich',
					usetime = 7500,
				},
			},
			['burger'] = {
				label = 'Hamburger',
				weight = 350,
				stack = true,
				close = true,
				client = {
					status = { hunger = 230000 },
					anim = 'eating',
					prop = 'burger',
					usetime = 7500
				}
			},
			['noodles'] = {
				label = 'Nouilles thaïlandaises',
				weight = 350,
				stack = true,
				close = true,
				client = {
					status = { hunger = 160000 },
					anim = 'drinking',
					prop = { model = `v_ret_fh_noodle`, pos = vec3(-0.03, 0.01, 0.05), rot = vec3(0.0, 0.0, -40.0) },
					usetime = 7500,
				},
			},
			['ramen'] = {
				label = 'Pot de Ramen',
				weight = 350,
				stack = true,
				close = true,
				client = {
					status = { hunger = 160000 },
					anim = 'drinking',
					prop = { model = `v_res_fa_potnoodle`, pos = vec3(-0.03, 0.01, 0.05), rot = vec3(0.0, 0.0, -40.0) },
					usetime = 7500,
				},
			},
			['apple'] = {
				label = 'Pomme',
				weight = 350,
				stack = true,
				close = true,
				client = {
					status = { hunger = 90000 },
					anim = 'eating',
					prop = { model = `sf_prop_sf_apple_01a`, pos = vec3(0.03, -0.02, -0.03), rot = vec3(300.0, 340.0, 170.0) },
					usetime = 3000,
				},
			},
			['banana'] = {
				label = 'Banane',
				weight = 350,
				stack = true,
				close = true,
				client = {
					status = { hunger = 90000 },
					anim = 'eating',
					prop = { model = `v_res_tre_banana`, pos = vec3(0.05, -0.02, 0.01), rot = vec3(270.0, 90.0, 0.0) },
					usetime = 3000,
				},
			},
			['candy'] = {
				label = 'P\'s & Q\'s',
				weight = 350,
				stack = true,
				close = true,
				client = {
					status = { hunger = 10000 },
					anim = 'drinking',
					prop = { model = `prop_candy_pqs`, pos = vec3(0.0, 0.02, 0.05), rot = vec3(90.0, 0.0, -45.0) },
					usetime = 5000,
				},
			},
			['phatc_rib'] = {
				label = 'Phat Chips: Ribs',
				weight = 350,
				stack = true,
				close = true,
				description = "Rib flavored chips, made with real wood chips",
				client = {
					status = { hunger = 120000 },
					anim = 'drinking',
					prop = { model = `ng_proc_food_chips01b`, pos = vec3(0.0, 0.08, 0.05), rot = vec3(90.0, 0.0, -45.0) },
					usetime = 5000,
				},
			},
			['phatc_bch'] = {
				label = 'Phat Chips: Big Cheese',
				weight = 350,
				stack = true,
				close = true,
				description = "Cheese flavored chips, made with real rats",
				client = {
					status = { hunger = 120000 },
					anim = 'drinking',
					prop = { model = `ng_proc_food_chips01a`, pos = vec3(0.0, 0.08, 0.05), rot = vec3(90.0, 0.0, -45.0) },
					usetime = 5000,
				},
			},
			['doritos'] = {
				label = 'Doritos (Nacho Cheese)',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_doritos`, pos = vec3(0.08, 0.01, 0.32), rot = vec3(5.0, -95.0, 0.5) },
					usetime = 2500,
					notification = 'You ate Doritos (Nacho Cheese)'
				},
			},
			['fritos1'] = {
				label = 'Fritos Flavor Twists(Honey BBQ)',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_frito_twist`, pos = vec3(0.18, 0.33, 0.02), rot = vec3(-94.69, -52.24, 74.18) },
					usetime = 2500,
					notification = 'You ate Fritos Flavor Twists(Honey BBQ)'
				},
			},
			['fritos2'] = {
				label = 'Fritos (Original)',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_fritos`, pos = vec3(0.08, -0.01, -0.45), rot = vec3(-94.69, -52.24, 74.18) },
					usetime = 2500,
					notification = 'You ate Fritos (Original)'
				},
			},
			['cheetos1'] = {
				label = 'Cheetos Cheesy Jalapeno',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_cheetos_001`, pos = vec3(0.05, 0.0, 0.14), rot = vec3(5.0, -95.0, 0.5) },
					usetime = 2500,
					notification = 'You ate Cheetos Cheesy Jalapeno'
				},
			},
			['cheetos2'] = {
				label = 'Cheetos Flamin Hot Lime',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_cheetos_002`, pos = vec3(0.06, 0.0, -0.04), rot = vec3(-94.69, -52.24, 74.18) },
					usetime = 7500,
					notification = 'You ate Cheetos Flamin Hot Lime'
				},
			},
			['cheetos3'] = {
				label = 'Cheetos (Bag of Bones)',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_cheetos_003`, pos = vec3(0.06, -0.13, -0.17), rot = vec3(-94.69, -50.79, 74.18) },
					usetime = 2500,
					notification = 'You ate Cheetos (Bag of Bones)'
				},
			},
			['lays1'] = {
				label = 'Lays (Original)',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_lays`, pos = vec3(0.05, -0.04, 0.35), rot = vec3(-94.69, -52.24, 74.18) },
					usetime = 2500,
					notification = 'You ate Lays (Original)'
				},
			},
			['lays2'] = {
				label = 'Lays (Sour Cream & Onion)',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasbabi_snacks_lays_sc`, pos = vec3(-0.01, -0.16, 0.17), rot = vec3(-94.69, -52.24, 74.18) },
					usetime = 2500,
					notification = 'You ate Lays (Sour Cream & Onion)'
				},
			},
			['lays3'] = {
				label = 'Lays (BBQ)',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_lays_bbq`, pos = vec3(-0.05, -0.38, -0.13), rot = vec3(-94.69, -52.24, 74.18) },
					usetime = 2500,
					notification = 'You ate Lays (BBQ)'
				},
			},
			['sunchips1'] = {
				label = 'Sunchips (Original)',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_sunchip`, pos = vec3(0.13, 0.24, -0.14), rot = vec3(-94.69, -52.24, 74.18) },
					usetime = 2500,
					notification = 'You ate Sunchips (Original)'
				},
			},
			['sunchips2'] = {
				label = 'Sunchips (Cheddar)',
				weight = 220,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = { model = `prop_wasabi_snacks_sun_cheddar`, pos = vec3(0.14, 0.1, -0.29), rot = vec3(-90.24, -52.08, 74.18) },
					usetime = 2500,
					notification = 'You ate Sunchips (Cheddar)'
				},
			},
		}
	},
	SoftDrinks = {
		IsActivate = true,
		List = {
			['cola'] = {
				label = 'eCola',
				weight = 350,
				client = {
					status = { thirst = 200000 },
					anim = 'drinking',
					prop = 'cola-1',
					usetime = 2500,
					-- notification = 'Vous étanche'
				}
			},
			['sprunk'] = { -- Carbonized syrup is good for the soul
				label = 'Sprunk',
				weight = 350,
				stack = true,
				close = true,
				description = "It tastes like water punched you in the throat",
				client = {
					status = { thirst = 160000 }, -- 0.01, 0.01, 0.06
					anim = 'drinking',
					prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.02, 0.01, -0.01), rot = vec3(0.0, 0.0, 160.0) },
					usetime = 5000,
				},
			},
			['orangotang'] = { -- Carbonized syrup is good for the soul
				label = 'Orang-o-tang',
				weight = 350,
				stack = true,
				close = true,
				description = "I didn't even know people wanted this",
				client = {
					status = { thirst = 160000 },
					anim = 'drinking',
					prop = { model = `prop_orang_can_01`, pos = vec3(0.02, 0.0, 0.07), rot = vec3(0.0, 0.0, 130.0) },
					usetime = 5000,
				},
			},
			['ejunk'] = { -- Drinking too much of this wont kill you. I think.
				label = 'Junk Energy',
				weight = 350,
				stack = true,
				close = true,
				description = "Drinking too much of this wont kill you. I think.",
				client = {
					status = { thirst = 160000 },
					anim = 'drinking',
					prop = { model = `sf_prop_sf_can_01a`, pos = vec3(0.02, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 5000,
				},
			},
			['water'] = {
				label = 'Bouteille d\'eau',
				weight = 500,
				client = {
					status = { thirst = 200000 },
					anim = 'drinking',
					prop = { model = `vw_prop_casino_water_bottle_01a`, pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) }, -- prop = 'water-bottle',
					usetime = 2500,
					cancel = true,
					-- notification = 'You drank some refreshing water'
				}
			},
			['coke_1'] = {
				label = 'Coca-Cola',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_coke_1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 0.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with Coke'
				}
			},
			['sprite'] = {
				label = 'Sprite',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_sprite_1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 0.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with Fanta'
				}
			},
			['monster'] = {
				label = 'Monster energy',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_monster_1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 90.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with Monster Energy'
				}
			},
			['pepsi_1'] = {
				label = 'Pepsi',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_pepsi_1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 40.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with Pepsi'
				}
			},
			['pepsi_2'] = {
				label = 'Pepsi Original',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_pepsi_2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 0.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with Pepsi'
				}
			},
			['7up_1'] = {
				label = '7 UP',
				weight = 350,
				client = {
					status = { thirst = 20000 }, --Status change amount
					anim = 'drinking',
					prop = { model = `wasabi_7up_1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 45.5) },
					usetime = 9500, --- How long the player will drink
					notification = 'You quenched your thirst with 7UP'
				}
			},
			['7up_2'] = {
				label = '7 UP Special',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_7up_2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 90.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with 7UP'
				}
			},
			['flemon'] = {
				label = 'Fanta Lemon',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_fanta_lemon_1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 90.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with Fanta'
				}
			},
			['forange'] = {
				label = 'Fanta Orange',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_fanta_orange_1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 0.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with Fanta'
				}
			},
			['dew_1'] = {
				label = 'Mountaindew Energy',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_mntdew_1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 90.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with MountainDew'
				}
			},
			['dew_2'] = {
				label = 'Mountaindew Citron',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_mntdew_2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -20.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with MountainDew'
				}
			},
			['dew_3'] = {
				label = 'Mountaindew',
				weight = 350,
				client = {
					status = { thirst = 20000 },
					anim = 'drinking',
					prop = { model = `wasabi_mntdew_3`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, 0.5) },
					usetime = 9500,
					notification = 'You quenched your thirst with MountainDew'
				}
			},
		}
	},
	Alcohool = {
		IsActivate = true,
		List = {
			['rancho_beer'] = {
				label = 'Cerbesa Barracho',
				weight = 290,
				stack = true,
				close = true,
				description = "Bière importée du Mexique",
				client = {
					status = { drunk = 90000 },
					anim = 'drinking',
					prop = { model = `prop_beer_bottle`, pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
					usetime = 7500,
				},
			},
			['dusche_beer'] = {
				label = 'Oettinger',
				weight = 290,
				stack = true,
				close = true,
				description = "Bière importée d\'Allemagne",
				client = {
					status = { drunk = 90000 },
					anim = 'drinking',
					prop = { model = `prop_beerdusche`, pos = vec3(0.01, -0.01, -0.12), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 7500,
				},
			},
			['stronzo_beer'] = {
				label = 'Amarcord',
				weight = 290,
				stack = true,
				close = true,
				description = "Bière artisanale importée d\'Italie",
				client = {
					status = { drunk = 90000 },
					anim = 'drinking',
					prop = { model = `prop_beer_stz`, pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 7500,
				},
			},
			['patriot_beer'] = {
				label = 'Bière Maison',
				weight = 290,
				stack = true,
				close = true,
				description = "Good ol homemade beer from the brewery",
				client = {
					status = { drunk = 90000 },
					anim = 'drinking',
					prop = { model = `prop_beer_patriot`, pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5) },
					usetime = 7500,
				},
			},
		}
	},
	Electronics = {
		IsActivate = true,
		List = {
			['phone'] = {
				label = 'Téléphone',
				weight = 190,
				stack = true,
				consume = 0,
				client = {
					export = "lb-phone.UsePhoneItem",
					add = function(total)
						-- if total > 0 then
						-- 	pcall(function() return exports.npwd:setPhoneDisabled(false) end)
						-- end
						TriggerEvent("lb-phone:itemAdded")
					end,
					remove = function(total)
						-- if total < 1 then
						-- 	pcall(function() return exports.npwd:setPhoneDisabled(true) end)
						-- end
						TriggerEvent("lb-phone:itemRemoved")
					end
				},
				buttons = {
					{
						label = 'Copié numéro',
						action = function(slot)
							local item = exports.ox_inventory:Search('slots', 'phone')
							for _, v in pairs(item) do
								if (v.slot == slot) then
									lib.setClipboard(v.metadata.lbPhoneNumber)
									break
								end
							end
						end
					}
				},
			},
			['powerbank'] = {
				label = 'Batterie portable',
				description = 'Recharger des appareils électroniques',
				weight = 250,
				durability = 100,
				stack = false,
				allowArmed = true,
				client = {
					export = 'atl_usable_items.ChargePhone'
				}
			},
			['radio'] = {
				label = 'Twalkie-Walkie',
				weight = 1000,
				stack = false,
				allowArmed = true,
				client = {
					export = 'ac_radio.openRadio',
					remove = function(total)
						-- if total < 1 and GetResourceState('ac_radio') == 'started' then exports['ac_radio']:forceDisconnectFromRadio() end
						if total < 1 and GetResourceState('ac_radio') == 'started' and GetConvar('radio_noRadioDisconnect', 'true') == 'true' then
							exports.ac_radio:leaveRadio()
						end
					end,
				}
			},
			['calculator'] = {
				label = 'Calculatrice',
				weight = 65,
				close = true,
				durability = 100,
				consume = 0.01,
				client = {
					export = 'calculator.OpenCalculator'
				}
			},
			["photo"] = {
				label = "Photo",
				weight = 10,
				stack = false,
				close = true,
				consume = 0,
				client = {
					export = 'qs-camera.usePhoto',
				},
			},
			["camera"] = {
				label = "Canon EOS 500D",
				weight = 1000,
				stack = false,
				close = true,
				description = nil
			},
			["broken_camera"] = {
				label = "Appareil photo cassé",
				weight = 1000,
				stack = false,
				close = true,
				--  consume = 0,
				-- description = nil
			},
			["camera_module"] = {
				label = "Module de caméra",
				weight = 50,
				-- stack = false,
				close = true,
				description = 'Permet de réparer une caméra cassée'
			},
		}
	},
	Usable = {
		IsActivate = true,
		List = {
			['armour'] = {
				label = 'Gilet pare-balle',
				weight = 3000,
				stack = false,
				durability = 100,
				client = {
					anim = 'clothes-top',
					usetime = 3500
				}
			},
			['parachute'] = {
				label = 'Parachute',
				weight = 8000,
				stack = false,
				client = {
					anim = 'clothes-top',
					usetime = 1500
				}
			},
			['lighter'] = {
				label = 'Briquet',
				weight = 20,
				-- description = 'Recquired to smoke a cigarette or a cigar',
				stack = false,
				durability = 100,
				-- buttons = {{
				-- 	label = 'Remplir le briquet',
				-- 	action = function(slot)
				-- 		lib.notify({
				--             title = 'Rechargement d\'un briquet',
				--             description = 'Vous voulez remplir le briquet du slot n° '..slot,
				--             type = 'info'
				--         })
				-- 	end
				-- }}
			},
			-- ["umbrella"] = {
			-- 	label = "Parapluie",
			-- 	weight = 500,
			-- 	stack = true,
			-- 	close = false,
			-- 	consume = 0,
			-- 	allowArmed = false,
			-- },
			['garbage'] = {
				label = 'Ordures',
			},
			['panties'] = {
				label = 'Culotte sale',
				weight = 10,
				consume = 0,
				client = {
					status = { thirst = -100000, stress = -25000 },
					anim = 'drinking',
					prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
					usetime = 2500,
					cancel = true,
            		notification = 'Vous avez des passe-temps étrange'
				}
			},
			['clothing'] = {
				label = 'Vêtement',
				consume = 0
			},
			['scrapmetal'] = {
				label = 'Bout de métal',
				weight = 80,
			},
			['yogamat_pro'] = {
				label = 'Tapis Yoga ProLaps',
				weight = 500,
				stack = true,
				close = true,
				description = 'A Limited Edition ProLaps Yogamat.'
			},
			['yogamat_blue'] = {
				label = 'Tapis Yoga bleu',
				weight = 500,
				stack = true,
				close = true,
				description = 'Did somebody say Yoga?',
			},
			['yogamat_black'] = {
				label = 'Tapis Yoga noir',
				weight = 500,
				stack = true,
				close = true,
				description = 'Did somebody say Yoga?',
			},
			['yogamat_red'] = {
				label = 'Tapis Yoga rouge',
				weight = 500,
				stack = true,
				close = true,
				description = 'Did somebody say Yoga?',
			},
		}
	},
	Illegals = {
		IsActivate = true,
		List = {
			['lockpick'] = {
				label = 'Kit crochetage',
				weight = 160,
			},
		}
	},
	Medical = {
		IsActivate = true,
		List = {
			['bandage'] = {
				label = 'Bandage',
				weight = 115,
				client = {
					anim = 'bandage',
					prop = 'socket',
					disable = { move = true, car = true, combat = true },
					usetime = 7000,
					cancel = true,
				}
			},
			['medikit'] = { -- Make sure not already a medikit
				label = 'Kit médical',
				weight = 165,
				stack = true,
				close = true,
			},
		}
	},
	Police = {
		IsActivate = true,
		List = {
			['metal_wand'] = {
				label = 'Détecteur métal SASP',
				weight = 550,
				stack = true,
				close = true,
				description = "Détectez des objets métalliques sur les gens"
			},
		}
	},
	Jobs = {
		IsActivate = false,
		List = {

		}
	},
	Exemple = {
		IsActivate = false,
		List = {
			['testburger'] = {
				label = 'Test Burger',
				weight = 220,
				degrade = 60,
				client = {
					status = { hunger = 200000 },
					anim = 'eating',
					prop = 'burger',
					usetime = 2500,
					export = 'ox_inventory_examples.testburger'
				},
				server = {
					export = 'ox_inventory_examples.testburger',
					test = 'what an amazingly delicious burger, amirite?'
				},
				buttons = {
					{
						label = 'Lick it',
						action = function(slot)
							print('You licked the burger')
						end
					},
					{
						label = 'Squeeze it',
						action = function(slot)
							print('You squeezed the burger :(')
						end
					},
					{
						label = 'What do you call a vegan burger?',
						group = 'Hamburger Puns',
						action = function(slot)
							print('A misteak.')
						end
					},
					{
						label = 'What do frogs like to eat with their hamburgers?',
						group = 'Hamburger Puns',
						action = function(slot)
							print('French flies.')
						end
					},
					{
						label = 'Why were the burger and fries running?',
						group = 'Hamburger Puns',
						action = function(slot)
							print('Because they\'re fast food.')
						end
					}
				},
				consume = 0.3
			},
		}
	}
}

local allItems = {}
for _, items in pairs(Items) do
	if items.IsActivate then
		for item, value in pairs(items.List) do
			allItems[item] = value
		end
	end
end

return allItems