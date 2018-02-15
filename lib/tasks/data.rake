namespace :data do
  desc "import cards"
  task :import_cards => :environment do
    cards_array =
    [{
        id: 1,
        name: 'n-Propyl chloride',
        points: 1,
        reagent1: '1o Alkyl halide',
        reagent2: 'Electrophile',
        notes: 'Electrophile for SN2 reactions.',
        image: 'assets/img/cards/large/card01.png',
        icon: 'assets/img/cards/icons/chemical01.png',
        startHandNum: 3,
        stockroomNum: 0
      },{
        id: 2,
        name: '2-Chloro-2-methylpropane',
        points: 1,
        reagent1: '3o Alkyl halide',
        reagent2: 'Electrophile',
        notes: 'Electrophile for SN1, E1, and E2 reactions.',
        image: 'assets/img/cards/large/card02.png',
        icon: 'assets/img/cards/icons/chemical02.png',
        startHandNum: 3,
        stockroomNum: 0
      },{
        id: 3,
        name: 'Hydroxide',
        points: 1,
        reagent1: 'Strong Base',
        reagent2: 'Strong Nucleophile',
        notes: 'Nucleophile/base for SN2 and E2 reactions.',
        image: 'assets/img/cards/large/card03.png',
        icon: 'assets/img/cards/icons/chemical03.png',
        startHandNum: 4,
        stockroomNum: 0
      },{
        id: 4,
        name: 'Chlorine',
        points: 2,
        reagent1: 'Oxidant',
        reagent2: '',
        notes: 'Strong oxidant capable of reacting with alkenes and under radical conditions.',
        image: 'assets/img/cards/large/card04.png',
        icon: 'assets/img/cards/icons/chemical04.png',
        startHandNum: 0,
        stockroomNum: 3
      },{
        id: 5,
        name: 'Hydrochloric Acid',
        points: 1,
        reagent1: 'Strong Acid',
        reagent2: '',
        notes: 'Strong acid useful for protonation of many weakly basic molecules. Chloride ion produced after deprotonation.',
        image: 'assets/img/cards/large/card05.png',
        icon: 'assets/img/cards/icons/chemical05.png',
        startHandNum: 0,
        stockroomNum: 3
      },{
        id: 6,
        name: '1-Butene',
        points: 1,
        reagent1: 'Alkene',
        reagent2: '',
        notes: 'Alkene useful for addition reactions.',
        image: 'assets/img/cards/large/card06.png',
        icon: 'assets/img/cards/icons/chemical06.png',
        startHandNum: 0,
        stockroomNum: 3
      },{
        id: 7,
        name: 'Light',
        points: 3,
        reagent1: 'Catalyst',
        reagent2: '',
        notes: 'Catalyst for initiating photochemical reactions.',
        image: 'assets/img/cards/large/card07.png',
        icon: 'assets/img/cards/icons/chemical07.png',
        startHandNum: 0,
        stockroomNum: 3
      },{
        id: 8,
        name: 'Magnesium metal',
        points: 5,
        reagent1: 'Metal',
        reagent2: '',
        notes: 'Reacts with alkyl halides to form Grignard reagents.',
        image: 'assets/img/cards/large/card08.png',
        icon: 'assets/img/cards/icons/chemical08.png',
        startHandNum: 0,
        stockroomNum: 3
      },{
        id: 9,
        name: 'Thionyl chloride',
        points: 3,
        reagent1: 'Chlorinating Reagent',
        reagent2: '',
        notes: 'Converts alcohols into alkyl chlorides.',
        image: 'assets/img/cards/large/card09.png',
        icon: 'assets/img/cards/icons/chemical09.png',
        startHandNum: 0,
        stockroomNum: 3
      },{
        id: 10,
        name: 'Sodium Hypochlorite',
        points: 3,
        reagent1: 'Oxidant',
        reagent2: '',
        notes: 'Converts alcohols into carbonyls.',
        image: 'assets/img/cards/large/card10.png',
        icon: 'assets/img/cards/icons/chemical10.png',
        startHandNum: 0,
        stockroomNum: 2
      },{
        id: 11,
        name: 'Swern Conditions',
        points: 3,
        reagent1: 'Oxidant',
        reagent2: '',
        notes: 'Converts alcohols into carbonyls.',
        image: 'assets/img/cards/large/card11.png',
        icon: 'assets/img/cards/icons/chemical11.png',
        startHandNum: 0,
        stockroomNum: 2
      },{
        id: 12,
        name: 'Sodium Hydride',
        points: 2,
        reagent1: 'Strong Base',
        reagent2: '',
        notes: 'A strong base without a significant reverse reaction.',image: 'assets/img/cards/large/card12.png',
        icon: 'assets/img/cards/icons/chemical12.png',
        startHandNum: 0,
        stockroomNum: 3
      },{
        id: 13,
        name: 'Sodium cyanide',
        points: 2,
        reagent1: 'Weak Base',
        reagent2: 'Strong Nucleophile',
        notes: 'An unhindered nucleophile especially suited for SN2 reactions.',
        image: 'assets/img/cards/large/card13.png',
        icon: 'assets/img/cards/icons/chemical13.png',
        startHandNum: 0,
        stockroomNum: 2
      },{
        id: 14,
        name: 'n-Propylamine',
        points: 1,
        reagent1: 'Weak Base',
        reagent2: 'Weak Nucleophile',
        notes: 'Nucleophile/base for SN1 and E1 reactions.',
        image: 'assets/img/cards/large/card14.png',
        icon: 'assets/img/cards/icons/chemical14.png',
        startHandNum: 0,
        stockroomNum: 0
      },{
        id: 15,
        name: '4-Penten-1-ol',
        points: 5,
        reagent1: 'Alcohols',
        reagent2: 'Alkene',
        notes: 'Contains both a primary alcohol and alkene.',
        image: 'assets/img/cards/large/card15.png',
        icon: 'assets/img/cards/icons/chemical15.png',
        startHandNum: 0,
        stockroomNum: 2
      },{
        id: 16,
        name: 'Lithium Aluminum Hydride',
        points: 3,
        reagent1: 'Reducing Agent',
        reagent2: '',
        notes: 'A strong reducing agent commonly used with carbonyls.',
        image: 'assets/img/cards/large/card16.png',
        icon: 'assets/img/cards/icons/chemical16.png',
        startHandNum: 0,
        stockroomNum: 3
      },{
        id: 17,
        name: 'Hydronium Ion',
        points: 1,
        reagent1: 'Weak Acid',
        reagent2: '',
        notes: 'Weak acid useful for protonation of basic molecules.',
        image: 'assets/img/cards/large/card17.png',
        icon: 'assets/img/cards/icons/chemical17.png',
        startHandNum: 0,
        stockroomNum: 3
       },{
        id: 18,
        name: 'Ammonia',
        points: 1,
        reagent1: 'Weak Base',
        reagent2: 'Weak Nucleophile',
        notes: 'Nucleophile/base for SN1 and E1 reactions.',
        image: 'assets/img/cards/large/card18.png',
        icon: 'assets/img/cards/icons/chemical18.png',
        startHandNum: 0,
        stockroomNum: 3
       },{
        id: 19,
        name: '1,3-Butadiene',
        points: 4,
        reagent1: 'Alkene',
        reagent2: '',
        notes: 'A conjugated diene.',
        image: 'assets/img/cards/large/card19.png',
        icon: 'assets/img/cards/icons/chemical19.png',
        startHandNum: 0,
        stockroomNum: 2
      },{
        id: 20,
        name: 'Acrolein',
        points: 5,
        reagent1: 'Carbonyl',
        reagent2: 'Alkene',
        notes: 'A good Michael acceptor and Diels-Alder reagent.',
        image: 'assets/img/cards/large/card20.png',
        icon: 'assets/img/cards/icons/chemical20.png',
        startHandNum: 0,
        stockroomNum: 0
      },{
        id: 21,
        name: 'Cyclopentadiene',
        points: 4,
        reagent1: 'Alkene',
        reagent2: '',
        notes: 'A cyclic conjugated diene.',
        image: 'assets/img/cards/large/card21.png',
        icon: 'assets/img/cards/icons/chemical21.png',
        startHandNum: 0,
        stockroomNum: 2
      },{
        id: 22,
        name: 'Dimethyl maleate',
        points: 5,
        reagent1: 'Alkene',
        reagent2: 'Carbonyl',
        notes: 'A electron-deficient alkene.',
        image: 'assets/img/cards/large/card22.png',
        icon: 'assets/img/cards/icons/chemical22.png',
        startHandNum: 0,
        stockroomNum: 2
      },{
        id: 23,
        name: '2-Chloropropane',
        points: 2,
        reagent1: '2o Alkyl halide',
        reagent2: 'Electrophile',
        notes: 'Electrophile for SN1, SN2, E1, and E2 reactions.',
        image: 'assets/img/cards/large/card23.png',
        icon: 'assets/img/cards/icons/chemical23.png',
        startHandNum: 0,
        stockroomNum: 3
      },{
        id: 24,
        name: 'Ozone',
        points: 3,
        reagent1: 'Oxidant',
        reagent2: '',
        notes: 'A powerful oxidant capable of cleaving alkenes and alkynes.',
        image: 'assets/img/cards/large/card24.png',
        icon: 'assets/img/cards/icons/chemical24.png',
        startHandNum: 0,
        stockroomNum: 2
      },{
        id: 25,
        name: 'Lithium diisopropyl amine.',
        points: 3,
        reagent1: 'Strong Base',
        reagent2: '',
        notes: 'A strong base useful in E2 and deprotonation reactions.',
        image: 'assets/img/cards/large/card25.png',
        icon: 'assets/img/cards/icons/chemical25.png',
        startHandNum: 0,
        stockroomNum: 2

      }]

      cards_array.each do |card_hash|
        print '.'
        Card.create(
            game_id: card_hash[:id],
            name: card_hash[:name],
            points: card_hash[:points],
            reagent1: card_hash[:reagent1],
            reagent2: card_hash[:reagent2],
            notes: card_hash[:notes],
            image_loc: card_hash[:image],
            icon: card_hash[:icon],
            start_hand_num: card_hash[:startHandNum],
            stockroom_num: card_hash[:stockroomNum]
        )
      end
  end

  desc 'Export cards in format for Cordova'
  task :export_cards => :environment do
    ans = ""
    Card.all.each do |c|
      ans += "{
        id: #{c.game_id},
        name: '#{c.name}',
        points: #{c.points},
        reagent1: '#{c.reagent1}',
        reagent2: '#{c.reagent2}',
        notes: '#{c.notes}',
        image: '#{c.image_loc}',
        icon: '#{c.icon}',
        startHandNum: #{c.start_hand_num},
        stockroomNum: #{c.stockroom_num}
      },"
    end
    puts ans
  end

  desc 'Create every possible combination'
  task :create_all_combos => :environment do
    puts "********* 1 card combinations"
    #1 card combo
    Card.all.each do |c|
      combo = Combo.create(outcome: true)
      CardSpot.create(combo: combo, ord: 1, card: c)
    end

    puts "********* 2 card combinations"
    #2 card combo
    Card.all.each do |c1|
      Card.all.each do |c2|
        if c1 == c2 && (c1.start_hand_num + c1.stockroom_num < 2)
        else
          print '.'
          combo = Combo.create(outcome: nil)
          CardSpot.create(combo: combo, ord: 1, card: c1)
          CardSpot.create(combo: combo, ord: 2, card: c2)
        end
      end
    end

    puts "********* 3 card combinations"
    #3 card combo
    Card.all.each do |c1|
      Card.all.each do |c2|
        Card.all.each do |c3|
          if c1 == c2 && c2 == c3 && (c1.start_hand_num + c1.stockroom_num < 3)
          elsif c1 == c2 && (c1.start_hand_num + c1.stockroom_num < 2)
          elsif c1 == c3 && (c1.start_hand_num + c1.stockroom_num < 2)
          elsif c2 == c3 && (c2.start_hand_num + c2.stockroom_num < 2)
          else
            print '.'
            combo = Combo.create(outcome: nil)
            CardSpot.create(combo: combo, ord: 1, card: c1)
            CardSpot.create(combo: combo, ord: 2, card: c2)
            CardSpot.create(combo: combo, ord: 3, card: c3)
          end
        end
      end
    end

    puts "********* 4 card combinations"
    #4 card combo
    Card.all.each do |c1|
      Card.all.each do |c2|
        Card.all.each do |c3|
          Card.all.each do |c4|
            if c1 == c2 && c2 == c3 && c3 == c4 && (c1.start_hand_num + c1.stockroom_num < 4)
            elsif c1 == c2 && c2 == c3 && (c1.start_hand_num + c1.stockroom_num < 3)
            elsif c2 == c3 && c3 == c4 && (c2.start_hand_num + c2.stockroom_num < 3)
            elsif c3 == c4 && c4 == c1 && (c1.start_hand_num + c1.stockroom_num < 3)
            elsif c4 == c1 && c1 == c2 && (c1.start_hand_num + c1.stockroom_num < 3)
            
            elsif c1 == c2 && (c1.start_hand_num + c1.stockroom_num < 2)
            elsif c1 == c3 && (c1.start_hand_num + c1.stockroom_num < 2)
            elsif c1 == c4 && (c1.start_hand_num + c1.stockroom_num < 2)
            elsif c2 == c3 && (c2.start_hand_num + c2.stockroom_num < 2)
            elsif c2 == c4 && (c2.start_hand_num + c2.stockroom_num < 2)
            elsif c3 == c4 && (c3.start_hand_num + c3.stockroom_num < 2)
            else
              combo = Combo.create(outcome: nil)
              print '.'
              CardSpot.create(combo: combo, ord: 1, card: c1)
              CardSpot.create(combo: combo, ord: 2, card: c2)
              CardSpot.create(combo: combo, ord: 3, card: c3)
              CardSpot.create(combo: combo, ord: 4, card: c4)
            end
          end
        end
      end
    end

    puts "********* 5 card combinations"
    #5 card combo
    Card.all.each do |c1|
      Card.all.each do |c2|
        Card.all.each do |c3|
          Card.all.each do |c4|
            Card.all.each do |c5|
              if c1 == c2 && c2 == c3 && c3 == c4 && c4 == c5 && (c1.start_hand_num + c1.stockroom_num < 5)
              elsif c2 == c3 && c3 == c4 && c4 == c5 && (c2.start_hand_num + c2.stockroom_num < 4)
              elsif c1 == c2 && c2 == c3 && c3 == c4 && (c1.start_hand_num + c1.stockroom_num < 4)
              elsif c1 == c2 && c2 == c3 && c3 == c5 && (c1.start_hand_num + c1.stockroom_num < 4)
              elsif c1 == c2 && c2 == c4 && c4 == c5 && (c1.start_hand_num + c1.stockroom_num < 4)
              elsif c1 == c3 && c3 == c4 && c4 == c5 && (c1.start_hand_num + c1.stockroom_num < 4)

              elsif c1 == c2 && c2 == c3 && (c1.start_hand_num + c1.stockroom_num < 3)
              elsif c1 == c2 && c2 == c4 && (c1.start_hand_num + c1.stockroom_num < 3)
              elsif c1 == c2 && c2 == c5 && (c1.start_hand_num + c1.stockroom_num < 3)
              elsif c1 == c3 && c3 == c4 && (c1.start_hand_num + c1.stockroom_num < 3)
              elsif c1 == c3 && c3 == c5 && (c1.start_hand_num + c1.stockroom_num < 3)
              elsif c2 == c3 && c3 == c4 && (c2.start_hand_num + c2.stockroom_num < 3)
              elsif c2 == c3 && c3 == c5 && (c2.start_hand_num + c2.stockroom_num < 3)
              elsif c2 == c4 && c4 == c5 && (c2.start_hand_num + c2.stockroom_num < 3)
              elsif c3 == c4 && c4 == c5 && (c1.start_hand_num + c1.stockroom_num < 3)
              
              elsif c1 == c2 && (c1.start_hand_num + c1.stockroom_num < 2)
              elsif c1 == c3 && (c1.start_hand_num + c1.stockroom_num < 2)
              elsif c1 == c4 && (c1.start_hand_num + c1.stockroom_num < 2)
              elsif c2 == c3 && (c2.start_hand_num + c2.stockroom_num < 2)
              elsif c2 == c4 && (c2.start_hand_num + c2.stockroom_num < 2)
              elsif c3 == c4 && (c3.start_hand_num + c3.stockroom_num < 2)
              else
                print '.'
                combo = Combo.create(outcome: nil)
                CardSpot.create(combo: combo, ord: 1, card: c1)
                CardSpot.create(combo: combo, ord: 2, card: c2)
                CardSpot.create(combo: combo, ord: 3, card: c3)
                CardSpot.create(combo: combo, ord: 4, card: c4)
                CardSpot.create(combo: combo, ord: 5, card: c5)
              end
            end
          end
        end
      end
    end

  end

  desc 'import combos'
  task :import_combos => :environment do
    #var CARDCOMBOS = {
    #0 is last item in hand
    combos_string = "{
      1: { 3: { 0: true, 3: { 1: { 0: true } } } },
      2: { 3: { 0: true } },
      3: { 1: { 0: true, 3: { 1: { 0: true } } },
           2: { 0: true } }
    }"
    #removes all white space, puts quotes before and after numbers
    json_combos = combos_string.squish.delete(' ').gsub(/(\d+)/, '"\\1"')
    combos_hash = JSON.parse json_combos

    combos_hash.keys.each do |k1|
      card1 = Card.find_by_game_id(k1)
      combos_hash[k1].keys.each do |k2|
        if k2 == '0'
          combo = Combo.create(outcome: true)
          CardSpot.create(combo: combo, card: card1, ord: 1)
        else
          card2 = Card.find_by_game_id(k2)
          combos_hash[k1][k2].keys.each do |k3|
            if k3 == '0'
              combo = Combo.create(outcome: true)
              CardSpot.create(combo: combo, card: card1, ord: 1)
              CardSpot.create(combo: combo, card: card2, ord: 2)
            else
              card3 = Card.find_by_game_id(k3)
              combos_hash[k1][k2][k3].keys.each do |k4|
                if k4 == '0'
                  combo = Combo.create(outcome: true)
                  CardSpot.create(combo: combo, card: card1, ord: 1)
                  CardSpot.create(combo: combo, card: card2, ord: 2)
                  CardSpot.create(combo: combo, card: card3, ord: 3)
                else
                  card4 = Card.find_by_game_id(k4)
                  combos_hash[k1][k2][k3][k4].keys.each do |k5|
                    if k5 == '0'
                      combo = Combo.create(outcome: true)
                      CardSpot.create(combo: combo, card: card1, ord: 1)
                      CardSpot.create(combo: combo, card: card2, ord: 2)
                      CardSpot.create(combo: combo, card: card3, ord: 3)
                      CardSpot.create(combo: combo, card: card4, ord: 4)
                    else
                      card5 = Card.find_by_game_id(k5)
                      combos_hash[k1][k2][k3][k4][k5].keys.each do |k6|
                        if k5 == '0'
                          combo = Combo.create(outcome: true)
                          CardSpot.create(combo: combo, card: card1, ord: 1)
                          CardSpot.create(combo: combo, card: card2, ord: 2)
                          CardSpot.create(combo: combo, card: card3, ord: 3)
                          CardSpot.create(combo: combo, card: card4, ord: 4)
                          CardSpot.create(combo: combo, card: card5, ord: 5)
                        else
                          puts "bad section of hash #{k1}:#{k2}:#{k3}:#{k4}:#{k5}"
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  desc 'import combos'
  task :export_combos => :environment do
    ans = {}
    Combo.all.each do |combo|
      card_ids = combo.card_spots.includes(:card).order(:ord).map(&:card).map(&:game_id)
      len = card_ids.length

      if len > 0
        if ans[card_ids[0]].nil?
          ans[card_ids[0]] = {}
        end
      end
      if len > 1
        if ans[card_ids[0]][card_ids[1]].nil?
          ans[card_ids[0]][card_ids[1]] = {}
        end
      end
      if len > 2
        if ans[card_ids[0]][card_ids[1]][card_ids[2]].nil?
          ans[card_ids[0]][card_ids[1]][card_ids[2]] = {}
        end
      end
      if len > 3
        if ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]].nil?
          ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]] = {}
        end
      end
      if len > 4
        if ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]][card_ids[4]].nil?
          ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]][card_ids[4]] = {}
        end
      end

      case len 
      when 0 
        #nothing
      when 1
        ans[card_ids[0]][0] = true
      when 2
        ans[card_ids[0]][card_ids[1]][0] = true
      when 3
        ans[card_ids[0]][card_ids[1]][card_ids[2]][0] = true
      when 4
        ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]][0] = true
      when 5
        ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]][card_ids[4]][0] = true
      end
    end
    puts ans.to_json
  end

end