DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631600 AND -1631000;
INSERT INTO `script_texts` (`entry`,`content_loc8`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES

-- Lord Marrowgar
('-1631000','Это начало и конец, смертные. Никто не может войти в Храм!','This is the beginning AND the end, mortals. None may enter the master\'s sanctum!','16950','6','0','0','marrowgar SAY_INTRO'),
('-1631001','Проклятые несут миру смерть и разрушение!','The Scourge will wash over this world as a swarm of death and destruction!','16941','6','0','0','marrowgar SAY_AGGRO'),
('-1631002','Шторм костей!','BONE STORM!','16946','3','0','0','marrowgar SAY_BONESTORM'),
('-1631003','Проткнут костью!','Bound by bone!','16947','3','0','0','marrowgar SAY_BONESPIKE1'),
('-1631004','Кости вокруг!','Stick Around!','16948','3','0','0','marrowgar SAY_BONESPIKE2'),
('-1631005','Выход - только смерть!','The only escape is death!','16949','6','0','0','marrowgar SAY_BONESPIKE3'),
('-1631006','Больше костей!','More bones for the offering!','16942','6','0','0','marrowgar SAY_KILL1'),
('-1631007','Будьте прокляты!','Languish in damnation!','16943','6','0','0','marrowgar SAY_KILL2'),
('-1631008','ЯРОСТЬ МАСТЕРА ТЕЧЕТ ЧЕРЕЗ МЕНЯ!','THE MASTER\'S RAGE COURSES THROUGH ME!','16945','3','0','0','marrowgar SAY_ENRAGE'),
('-1631009','Я вижу... Только тьму...','I see... only darkness...','16944','6','0','0','marrowgar SAY_DEATH'),

-- Lady Deathwhisper
('-1631020','Взгляните на ваши мягкие руки! Сухожилия, мясо, кровь! Это слабость! Серьезная ошибка! Шутка создателя со своими творениями! Чем раньше вы поймете что жизнь - это дефект, тем раньше вы сможете преодолеть вашу слабость!','Fix your eyes upon your crude hands! The sinew, the soft meat, the dark blood coursing within! It is a weakness! A crippling flaw! A joke played by the creators upon their own creations! The sooner you come to accept your condition as a defect, the sooner you will find yourselves in a position to transcend it!','16878','6','0','0','deathwhisper SAY_INTRO1'),
('-1631021','Через нашего Мастера все возможно! Его сила не имеет предела, и его воля непреклонна! Те, кто против него будут истреблены! А те, кто служат, которые подчиняются полностью, беспрекословно, с беззаветной преданностью ума и души? Возвышены!','Through our master all things are possible! His power is without limit, and his will unbending! Those who oppose him will be destroyed utterly! And those who serve, who serve wholly, unquestioningly, with utter devotion of mind and soul? Elevated! To heights beyond your ken!','16879','6','0','0','deathwhisper SAY_INTRO2'),
('-1631022','Вы нашли свой путь здесь, потому что вы принадлежите к числу немногих одаренных истинным видением мира, проклятого слепотой! Вы можете видеть сквозь туман, что висит над этим миром, как саван, и понять, где истинная сила лжи!','You have found your way here, because you are among the few gifted with true vision in a world cursed with blindness! You can see through the fog that hangs over this world like a shroud and grasp where true power lies!','16880','6','0','0','deathwhisper SAY_INTRO3'),
('-1631023','Что это за беспорядок?! Вы смеете гадить на этой священной земле? Вот вам и место последнего упокоения!','What is this disturbance?! You dare trespass upon this hallowed ground? This shall be your final resting place.','16868','6','0','0','deathwhisper SAY_AGGRO'),
('-1631024','Однако! Я вижу что пора взять дело в свои руки.','Enough! I see I must take matters into my own hands!','16877','6','0','0','deathwhisper SAY_PHASE2'),
('-1631025','Вы слабы и бессильны против меня!','You are weak, powerless to resist my will!','16876','6','0','0','deathwhisper SAY_DOMINATEMIND'),
('-1631026','Возьмите это благословение и покажите этим злоумышленникам где раки зимуют!','Take this blessing and show these intruders a taste of our master\'s power.','16873','6','0','0','deathwhisper SAY_DARKEMPOWERMENT'),
('-1631027','Мои слуги! Я освобождаю вас от проклятия плоти!','Loyal adherent! I release you from the curse of flesh!','16874','6','0','0','deathwhisper SAY_DARKTRANSFORMATION'),
('-1631028','Встань и предстань в истинном виде!','Arise and exalt in your pure form!','16875','6','0','0','deathwhisper SAY_ANIMATEDEAD'),
('-1631029','Вы еще не осознали бесполезность своих действий?','Do you yet grasp of the futility of your actions?','16869','6','0','0','deathwhisper SAY_KILL1'),
('-1631030','Прими Тьму! Тьма вечна...','Embrace the darkness... Darkness eternal!','16870','6','0','0','deathwhisper SAY_KILL2'),
('-1631031','Это игра продолжается слишком долго!','This charade has gone on long enough.','16872','3','0','0','deathwhisper SAY_BERSERK'),
('-1631032','Все - части плана Мастера! Ваш конец неизбежен...','All part of the masters plan! Your end is... inevitable!','16871','6','0','0','deathwhisper SAY_DEATH'),

-- Saurfang
('-1631100','Во имя Короля-Лича!','BY THE MIGHT OF THE LICH KING!','16694','6','0','0','saurfang SAY_AGGRO'),
('-1631101','Земля обагрится вашей кровью!','The ground runs red with your blood!','16699','6','0','0','saurfang SAY_FALLENCHAMPION'),
('-1631102','Веселитесь, слуги мои!','Feast, my minions!','16700','3','0','0','saurfang SAY_BLOODBEASTS'),
('-1631103','Ты никто!','You are nothing!','16695','6','0','0','saurfang SAY_KILL1'),
('-1631104','Ваши души не найдут здесь избавления!','Your soul will find no redemption here!','16696','6','0','0','saurfang SAY_KILL2'),
('-1631105','Я вижу приближение смерти!','I have become... death!','16698','3','0','0','saurfang SAY_BERSERK'),
('-1631106','Я... Освободился...','I... Am... Released.','16697','6','0','0','saurfang SAY_DEATH'),
('-1631107','Все павшие воины орды, все дохлые псы альянса - все пополнят армию Короля-Лича! Даже сейчас валькиры воскрешают ваших покойников, чтобы они стали частью Плети!','For every Horde soldier that you killed, for every Alliance dog that fell, the Lich King\'s armies grew. Even now the Val\'kyr work to raise your fallen... As Scourge.','16701','6','0','0','saurfang SAY_INTRO'),
('-1631108','Сейчас все будет еще хуже. Идите сюда, я покажу вам, какой силой меня наделил Король-Лич!','Things are about to get much worse. Come, taste the power that the Lich King has bestowed upon me!','16702','6','0','0','saurfang SAY_BERSERK'),
('-1631109','Ха-ха-ха. Дворфы!','Hahahaha! Dwarves.','16703','6','0','0','saurfang SAY'),

-- Festergut
('-1631201','Отличные новости народ! Я починил трубы для подачи ядовитой смеси!','Good news, everyone! I\'ve fixed the poison slime pipes!','17123','6','0','0','Putricide Valve01'),
('-1631202','Тухлопуз! Ты всегда был моим любимчиком, как и Гниломорд... Молодец, что оставил столько газа. Я его даже чувствую.','Oh, Festergut. You were always my favorite. Next to Rotface. The good news is you left behind so much gas, I can practically taste it!','17124','6','0','0','Putricide Festergut Dead'),
('-1631203','Повеселимся!','Fun time!','16901','6','0','0','Festergut Aggro'),
('-1631204','Папочка! У меня получилось!','Daddy, I did it!','16902','6','0','0','Festergut Slay 01'),
('-1631205','Мертвец! Мертвец! Мертвец!','Dead, dead, dead!','16903','6','0','0','Festergut Slay 02'),
('-1631206','А-а-а-а-а...','Da ... Ddy...','16904','6','0','0','Festergut Death'),
('-1631207','Веселью конец!','Fun time over!','16905','6','0','0','Festergut Berserk'),
('-1631208','Что-то мне нехорошо...','Gyah! Uhhh, I not feel so good...','16906','6','0','0','Festergut Explunge Blight'),
('-1631209','Нет! Вы убили Вонючку! Сейчас получите!','NOOOO! You kill Stinky! You pay!','16907','6','0','0','Festergut Stinky Death '),
('-1631210','Их-ха!','...','16908','6','0','0','Festergut say '),
('-1631211','Ы-ы-ы!','...','16909','6','0','0','Festergut say '),
('-1631212','(Непереводимо)','...','16910','6','0','0','Festergut say '),
('-1631213','Пук.','...','16911','6','0','0','Festergut brrr '),

-- Rotface
('-1631220','Отличные новости народ! Слизь снова потекла!','Great news, everyone! The slime is flowing again!','17126','6','0','0','Putricide Slime Flow'),
('-1631221','Й-й-йя-хахаха!','WEEEEEE!','16986','6','0','0','Rotface Aggro'),
('-1631222','Я ЭТО заломал!','I brokes-ded it...','16987','6','0','0','Rotface Slay 01'),
('-1631223','Папочка сделает новые игрушки из тебя!','Daddy make toys out of you!','16988','6','0','0','Rotface Slay 02'),
('-1631224','Папочка, не огорчайся...','Bad news daddy.','16989','6','0','0','Rotface Death'),
('-1631225','Тихий час!','Sleepy Time!','16990','6','0','0','Rotface Berserk'),
('-1631226','Липучка-вонючка!','Icky sticky.','16991','6','0','0','Rotface Infection'),
('-1631227','Я сделал очень злую каку! Сейчас взорвется!','I think I made an angry poo-poo. It gonna blow!','16992','6','0','0','Rotface Unstable Ooze'),
('-1631228','Что? Прелесть? Не-е-е-т!','What? Precious? Noooooooooo!!!','16993','6','0','0','Rotface Precious played when precious dies'),
('-1631229','Й-а-а-а!','...','16994','6','0','0','Rotface say'),
('-1631230','Ах!','...','16995','6','0','0','Rotface say'),
('-1631231','А-а-у!','...','16996','6','0','0','Rotface say'),

-- Professor Putricide
('-1631240','Отличные новости народ! Я усовершенствовал штамм чумы, которая уничтожит весь Азерот!','Good news, everyone! I think I perfected a plague that will destroy all life on Azeroth!','17114','6','0','0','Putricide Aggro'),
('-1631241','М-м-м. Интересно.','Hmm... Interesting...','17115','6','0','0','Putricide Slay 01'),
('-1631242','О, как неожиданно!','That was unexpected!','17116','6','0','0','Putricide Slay 02'),
('-1631243','Плохие новости, народ... Похоже, у меня ничего не выйдет.','Bad news, everyone! I don\'t think I\'m going to make it.','17117','6','0','0','Putricide Death'),
('-1631244','Прекрасные новости, народ!','Great news, everyone!','17118','6','0','0','Putricide Berserk'),
('-1631245','Это обычное облако газа. Но будьте осторожны, не такое уж оно и обычное...','Just an ordinary gas cloud. But watch out, because that\'s no ordinary gas cloud!','17119','6','0','0','Putricide Gas Explosion'),
('-1631246','Что-то я ничего не чувствую. Что? Это еще откуда?','Hmm. I don\'t feel a thing. Whaa...? Where\'d those come from?','17120','6','0','0','Putricide Transform 01'),
('-1631247','На вкус как вишенка. Ой, извините...','Tastes like... Cherry! Oh! Excuse me!','17121','6','0','0','Putricide Transform 02'),
('-1631248','Два слизнюка в одной комнате? Может получиться что-то любопытное...','Two oozes, one room! So many delightful possibilities...','17122','6','0','0','Putricide Summon Ooze'),
('-1631249','Вы слишком грязные чтобы тут расхаживать! Надо сперва соскрести эту мерзкую плоть.','You can\'t come in here all dirty like that! You need that nasty flesh scrubbed off first!','17125','6','0','0','Putricide Airlock01 Before fight'),

-- Blood Prince Council
('-1631301','Глупые смертные! Думали, что одолели нас? Санлейн, непобедимые воины Короля-Лича! Теперь наши силы едины!','Foolish mortals. You thought us defeated so easily? The San\'layn are the Lich King\'s immortal soldiers! Now you shall face their might combined!','16795','6','0','0','Lanathel Intro Princes'),
('-1631302','Кушать подано!','Dinner... is served.','16681','6','0','0','Valanar Slay 01'),
('-1631303','Теперь вы видите, насколько мы сильны?','Do you see NOW the power of the Darkfallen?','16682','6','0','0','Valanar Slay 02'),
('-1631304','Охохо...','...why...?','16683','6','0','0','Valanar Death'),
('-1631305','Хорош тянуть время перед Санлейн!','BOW DOWN BEFORE THE SAN\'LAYN!','16684','6','0','0','Valanar Berserk'),
('-1631306','Наксанар был досадным недоразумением! Силы сферы позволят Валанару свершить отмщение!','Naxxanar was merely a setback! With the power of the orb, Valanar will have his vengeance!','16685','6','0','0','Valanar Empower'),
('-1631307','Моя чаша полна','My cup runneth over.','16686','6','0','0','Valanar Special'),
('-1631308','Йих!','...','16687','6','0','0','Princes say'),
('-1631309','Э-эх!','...','16688','6','0','0','Princes say'),
('-1631310','До-хо!','...','16689','6','0','0','Princes say'),
('-1631311','Восстаньте, братья, и уничтожьте наших врагов!','<need translate>','16796','6','0','0','Lanathel resurrect Princes'),

-- Blood Queen Lana'thel
('-1631321','Это было неразумное решение!','You have made an... unwise... decision.','16782','6','0','0','Lanathel Aggro'),
('-1631322','Я только попробую на вкус...','Just a taste...','16783','6','0','0','Lanathel Bite 01'),
('-1631323','Я голодна!','Know my hunger!','16784','6','0','0','Lanathel Bite 02'),
('-1631324','Смерть вас не спасет!','Death is no escape!','16785','6','0','0','Lanathel Add'),
('-1631325','Страдайте же!','SUFFER!','16786','6','0','0','Lanathel Special 01'),
('-1631326','Как вам такое?','Can you handle this?','16787','6','0','0','Lanathel Special 02'),
('-1631327','Начинаем представление!','Here it comes.','16788','6','0','0','Lanathel Special 03'),
('-1631328','Не повезло...','How... Unfortunate...','16789','6','0','0','Lanathel Reset'),
('-1631329','Нет. Моя прелесть, приятного аппетита!','Yes... feed my precious one! You\'re mine now!','16790','6','0','0','Lanathel Mind Control'),
('-1631330','Вот как... У тебя не получилось?','Really...? Is that all you\'ve got?','16791','6','0','0','Lanathel Slay 01'),
('-1631331','Какая жалость...','Such a pity!','16792','6','0','0','Lanathel Slay 02'),
('-1631332','Сейчас все кончится!','THIS! ENDS! NOW!','16793','6','0','0','Lanathel Berserk'),
('-1631333','Но... Мы ведь так хорошо ладили...','But... we were getting along... so well...','16794','6','0','0','Lanathel Death'),
('-1631334','Восстаньте братья! И уничтожьте наших врагов!','Rise up brothers! And destroy our enemies!','16796','6','0','0','Lanathel Empower'),
('-1631335','Ха-х!','Ha!','16797','6','0','0','Lanathel say'),
('-1631338','Ах-ха...','Oo...','16798','6','0','0','Lanathel say'),
('-1631339','Ых...','Oh...','16799','6','0','0','Lanathel say'),

-- Valithria Dreamwalker
('-1631401','Герои! Вы должны мне помочь! Мои силы на исходе... Залечите мои раны...','Heroes, lend me your aid! I... I cannot hold them off much longer! You must heal my wounds!','17064','6','0','0','Valithria Aggro'),
('-1631402','Одержимые не знают отдыха...','No rest for the wicked...','17065','6','0','0','Valithria Slay Bad Hostile NPC'),
('-1631403','Прискобная потеря.','A tragic loss...','17066','6','0','0','Valithria Slay Good - Player'),
('-1631404','Неудачники!','FAILURES!','17067','6','0','0','Valithria Berserk'),
('-1631405','Я открыла портал в изумрудный сон. Там вы найдете спасение, герои!','I have opened a portal into the Dream. Your salvation lies within, heroes.','17068','6','0','0','Valithria Dream World Open'),
('-1631406','Я долго не продержусь!','I will not last much longer!','17069','6','0','0','Valithria Health Low'),
('-1631407','Силы возвращаются ко мне! Герои, еще немного!','My strength is returning! Press on, heroes!','17070','6','0','0','Valithria Health High'),
('-1631408','Я излечилась! Изера, даруй мне силу покончить с этими нечестивыми тварями!','I am renewed! Ysera grants me the favor to lay these foul creatures to rest!','17071','6','0','0','Valithria Win'),
('-1631409','Простите меня, я не могу остано... ВСЕ ВО ВЛАСТИ КОШМАРА!','Forgive me for what I do! I... cannot... stop... ONLY NIGHTMARES REMAIN!','17072','6','0','0','Valithria Lose'),

-- Sindragosa
('-1631420','Глупцы! Зачем вы сюда явились? Ледяные ветра Нордскола унесут ваши души!','You are fools who have come to this place! The icy winds of Northrend will consume your souls!','17007','6','0','0','Sindragosa Aggro'),
('-1631421','Погибни!','Perish!','17008','6','0','0','Sindragosa Slay 01'),
('-1631422','Удел смертных!','A flaw of mortality...','17009','6','0','0','Sindragosa Slay 02'),
('-1631423','Наконец-то! Свободна!','Free...at last...','17010','6','0','0','Sindragosa Death'),
('-1631424','Хватит! Эти игры меня утомляют!','Enough! I tire of these games!','17011','6','0','0','Sindragosa Berserk'),
('-1631425','Здесь ваше вторжение и окончится! Никто не уцелеет!','Your incursion ends here! None shall survive!','17012','6','0','0','Sindragosa Take Off - fly'),
('-1631426','Вы чувствуете, как ледяная ладонь смерти сжимает сердце?','Can you feel the cold hand of death upon your heart?','17013','6','0','0','Sindragosa Freeze'),
('-1631427','Трепещите, смертные! Ибо ваша жалкая магия теперь бессильна!','Suffer, mortals, as your pathetic magic betrays you!','17014','6','0','0','Sindragosa Arcane'),
('-1631428','А-а-а! Жжот! Что это за колдовство?','Suffer, mortals, as your pathetic magic betrays you!','17015','6','0','0','Sindragosa Special'),
('-1631429','А теперь почувствуйте всю мощь Господина и погрузитесь в отчаяние!','Now feel my master\'s limitless power and despair!','17016','6','0','0','Sindragosa Low HP'),

-- Lich king
('-1631501','Неужели прибыли, наконец, хваленые силы света? Мне бросить Ледяную скорбь и сдаться на твою милость, Фордринг?','So...the Light\'s vaunted justice has finally arrived. Shall I lay down Frostmourne and throw myself at your mercy, Fordring?','17349','6','0','0','Lich King SAY_INTRO1'),
('-1631503','Ты пройдешь через эти мучения сам.','You will learn of that first hand. When my work is complete, you will beg for mercy -- and I will deny you. Your anguished cries will be testament to my unbridled power.','17350','6','0','0','Lich King SAY_INTRO3'),
('-1631505','Я оставлю тебя в живых, чтобы ты увидел финал! Не могу допустить чтобы величайший служитель света пропустил рождение МОЕГО мира!','I\'ll keep you alive to witness the end, Fordring. I would not want the Light\'s greatest champion to miss seeing this wretched world remade in my image.','17351','6','0','0','Lich King SAY_AGGRO'),
('-1631506','Ну же, герои! В вашей ярости - МОЯ сила!','Come then champions, feed me your rage!','17352','6','0','0','Lich King SAY'),
('-1631507','Сомнений нет - вы сильнейшие герои Азерота! Вы преодолели все препятствия, которые я воздвиг перед вами! Сильнейшие из моих слуг пали под вашим натиском, сгорели в пламени вашей ярости!','No question remains unanswered. No doubts linger. You are Azeroth\'s greatest champions! You overcame every challenge I laid before you. My mightiest servants have fallen before your relentless onslaught, your unbridled fury..','17353','6','0','0','Lich King SAY'),
('-1631508','Что движет вами? Праведность? Не знаю...','Is it truly righteousness that drives you? I wonder.','17354','6','0','0','Lich King SAY'),
('-1631509','Ты отлично их обучил, Фордринг! Ты привел сюда лучших воинов, которых знал мир! И отдал их в мои руки. Как я и рассчитывал.','You trained them well, Fordring. You delivered the greatest fighting force this world has ever known... right into my hands -- exactly as I intended. You shall be rewarded for your unwitting sacrifice.','17355','6','0','0','Lich King SAY'),
('-1631510','Смотри как я буду воскрешать их и превращать в воинов Плети! Они повергнут этот мир в пучину хаоса. Азерот падет от их рук. И ты станешь первой жертвой. ','Watch now as I raise them from the dead to become masters of the Scourge. They will shroud this world in chaos and destruction. Azeroth\'s fall will come at their hands -- and you will be the first to die.','17356','6','0','0','Lich King SAY'),
('-1631511','Мне по душе эта ирония!','I delight in the irony.','17357','6','0','0','Lich King SAY'),
('-1631512','Невозможно!','Impossible...','17358','6','0','0','Lich King SAY'),
('-1631513','Да! Вы меня и правда ранили. Я слишком долго с вами играл. Испытайте на себе возмездие Смерти!','You gnats actually hurt me! Perhaps I\'ve toyed with you long enough, now taste the vengeance of the grave!','17359','6','0','0','Lich King SAY'),
('-1631514','А-а-х!','...','17360','6','0','0','Lich King SAY'),
('-1631515','И вот я стою как лев пред агнцами. И не дрожат они.','Now I stand, the lion before the lambs... and they do not fear.','17361','6','0','0','Lich King SAY'),
('-1631516','Им неведом страх!','They cannot fear.','17362','6','0','0','Lich King SAY'),
('-1631517','Надежда тает!','Hope wanes!','17363','6','0','0','Lich King SAY'),
('-1631518','Пришел конец!','The end has come!','17364','6','0','0','Lich King SAY'),
('-1631519','Встречайте трагический финал!','Face now your tragic end!','17365','6','0','0','Lich King SAY_KILL'),
('-1631520','Ледяная скорбь жаждет крови!','Frostmourne hungers...','17366','6','0','0','Lich King SAY'),
('-1631521','Ледяная скорбь, повинуйся мне!','Argh... Frostmourne, obey me!','17367','6','0','0','Lich King SAY'),
('-1631522','Ледяная скорбь поглотит душу вашего товарища!','Frostmourne feeds on the soul of your fallen ally!','17368','6','0','0','Lich King SAY_KILL'),
('-1631523','Я проморожу вас насквозь и вы разлетитесь на ледяные осколки!','I will freeze you from within until all that remains is an icy husk!','17369','6','0','0','Lich King SAY'),
('-1631524','Смотрите, как мир рушится вокруг вас!','Watch as the world around you collapses!','17370','6','0','0','Lich King SAY_WIN'),
('-1631525','Конец света!','Apocalypse!','17371','6','0','0','Lich King SAY'),
('-1631526','Склонись перед своим господином и повелителем!','Bow down before your lord and master!','17372','6','0','0','Lich King SAY'),
('-1631527','Валькирия! Твой господин зовет!','Val\'kyr, your master calls!','17373','6','0','0','Lich King SAY_SUMMON'),
('-1631528','...','...','17374','6','0','0','Lich King SAY_DEATH'),
('-1631531','Оскверняю!','Defile!','0','3','0','0','Lich King SAY'),

-- Tirion
('-1631552','Мы даруем тебе быструю смерть, Артас! Более быструю чем ты заслуживаешь за то что замучил и погубил десятки тысяч жизней!','We will grant you a swift death, Arthas. More than can be said for the thousands you\'ve tortured and slain.','17390','6','0','0','Tirion SAY_INTRO2'),
('-1631554','Да будет так! Герои, в атаку','So be it. Champions, attack!','17391','6','0','0','Tirion SAY_INTRO4'),
('-1631555','Свет! Даруй мне последнее благословение! Дай мне разбить эти оковы!','LIGHT, GRANT ME ONE FINAL BLESSING. GIVE ME THE STRENGTH... TO SHATTER THESE BONDS!','17392','6','0','0','Tirion SAY'),
('-1631556','Хватит, Артас! Твоя ненависть не заберет больше ни одной жизни!','No more, Arthas! No more lives will be consumed by your hatred!','17393','6','0','0','Tirion SAY'),

-- Menethil
('-1631557','Вы пришли чтобы вершить суд над Артасом? Чтобы уничтожить короля-лича?','You have come to bring Arthas to justice? To see the Lich King destroyed?','17394','6','0','0','Terenas Menethil II SAY'),
('-1631558','Вы не должны оказаться во власти Ледяной скорби. Иначе, как и я, будете навеки порабощены этим проклятым клинком.','First, you must escape Frostmourne\'s hold, or be damned as I am; trapped within this cursed blade for all eternity.','17395','6','0','0','Terenas Menethil II SAY'),
('-1631559','Помогите мне уничтожить эти истерзанные души. Вместе мы вытянем силу из ледяной скорби и ослабим короля-лича.','Aid me in destroying these tortured souls! Together we will loosen Frostmourne\'s hold and weaken the Lich King from within!','17396','6','0','0','Terenas Menethil II SAY'),
('-1631560','Наконец я свободен. Все кончено, сын мой. Настал час расплаты.','Free at last! It is over, my son. This is the moment of reckoning.','17397','6','0','0','Terenas Menethil II SAY'),
('-1631561','Поднимитесь, воины света!','Rise up, champions of the Light!','17398','6','0','0',' SAY'),

-- Adds
('-1631590','Р-р-р-рота, подъем!','<need translate>','0','6','0','0','custom message'),
('-1631591','Хилы, не спать!','<need translate>','0','6','0','0','custom message'),
('-1631592','ДД поднажали!','<need translate>','0','6','0','0','custom message'),
('-1631593','Лидер, гони лентяев из рейда! А то еще час возиться будете!','<need translate>','0','6','0','0','custom message'),
('-1631594','Ну вот вы и прикончили Артаса. Теперь будем ждать Катаклизм.','<need translate>','0','6','0','0','custom message');

-- Gossips
DELETE FROM `gossip_texts` WHERE `entry` BETWEEN -3631610 AND -3631600;
INSERT INTO `gossip_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `comment`) VALUES
('-3631600', "Light\'s Hammer", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Молот света", "IceCrown citadel teleporter text 1"),
('-3631601', "Oratory of the Damned", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Молельня проклятых", "IceCrown citadel teleporter text 2"),
('-3631602', "Rampart of Skulls", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Черепной вал", "IceCrown citadel teleporter text 3"),
('-3631603', "Deathbringer\'s Rise", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Подъем Смертоносного", "IceCrown citadel teleporter text 4"),
('-3631604', "Icecrown Citadel", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Цитадель Ледяной Короны", "IceCrown citadel teleporter text 5"),
('-3631605', "The Sanctum of Blood", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Святилище крови", "IceCrown citadel teleporter text 6"),
('-3631606', "Frost Queen\'s Lair", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Логово Королевы льда", "IceCrown citadel teleporter text 7"),
('-3631607', "Frozen Throne", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Ледяной трон", "IceCrown citadel teleporter text 8"),
('-3631608', "We are ready, Tirion!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "Всегда готовы, дедуля!", "IceCrown citadel Tirion gossip");
