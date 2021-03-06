calendars = {
  'major-dates' : 'bosqueschool.org_76to4kr5lb2j1an0a47idm156k@group.calendar.google.com',
  '10-day-rotation' : 'bosqueschool.org_hvg4ot93r37bmfhfc8icjflbj8@group.calendar.google.com',
  'bosque-school-announcements': 'bosqueschool.org_od6t9cr36thabbf1toqq1t3rhs@group.calendar.google.com'
  'lunch' : 'bosqueschool.org_3hme67a2fiq3kehqlpj40r0g7s@group.calendar.google.com',
  'school-closures' : 'bosqueschool.org_6a03jg89qcheos0st276c32kec@group.calendar.google.com',
  'special-events' : 'bosquescool.org_jvcae42sckldksbt2q2qnkrff4@group.calendar.google.com',
  'intercultural-exchange' : 'bosqueschool.org_a7aqnk9em72i33o0fko7dhu1ho@group.calendar.google.com',
  'upper-school' : 'bosqueschool.org_ihpomq8egbvmfsf1ke1r607cqk@group.calendar.google.com',
  'middle-school' : 'bosqueschool.org_p9nalksq6so969kj2ltcjftmo4@group.calendar.google.com',
  'middle-school-field-trips' : 'bosqueschool.org_ln1bl1ooj2e2o1kr6grhk7jrfs@group.calendar.google.com',
  'upper-school-athletics' : 'bosqueschool.org_4oicvpaalnm8238cc7c1iqvhco@group.calendar.google.com',
  'boys-tennis' : 'bosqueschool.org_rt1vcc7pfgktguhnt2n6honmm8@group.calendar.google.com',
  'girls-tennis' : 'bosqueschool.org_saabcnnpfgq202p0vqk0uo0ugk@group.calendar.google.com',
  'boys-basketball' : 'bosqueschool.org_1dqfafsbr5je2iasbq8is5s2b0@group.calendar.google.com',
  'girls-basketball' : 'bosqueschool.org_gj9reb6e8gauubvjq3ilmcvtdc@group.calendar.google.com',
  'girls-lacrosse' : 'bosqueschool.org_lng8hpv4ohko7eh3iichmnp5cg@group.calendar.google.com',
  'boys-lacrosse' : 'bosqueschool.org_gcoo8g9euacnrc3brfmod36l98@group.calendar.google.com',
  'girls-soccer' : 'bosqueschool.org_vm67grg4fq7fqapgi1pve5gprk@group.calendar.google.com',
  'boys-soccer' : 'bosqueschool.org_m3q3nto7qtt7n37sunnjsgaoe4@group.calendar.google.com',
  'golf' : 'bosqueschool.org_9q6ccnbv3rberbsbp0gogsalic@group.calendar.google.com',
  'swimming' : 'bosqueschool.org_gn2dllui9rp9ut40q16sdpv89s@group.calendar.google.com',
  'track' : 'bosqueschool.org_hcbpou8h8s4j48jp1qr29u14to@group.calendar.google.com',
  'cross-country' : 'bosqueschool.org_t2nh5qnongbvdn5p6gvcp0nsdg@group.calendar.google.com',
  'volleyball' : 'bosqueschool.org_95cfs8tkgbfhjbp1a8vdj1t6f4@group.calendar.google.com',
  'middle-school-athletics' : 'bosqueschool.org_8mei6ertr11i0cjv8f15k23jsg@group.calendar.google.com',
  'ms-girls-basketball' : 'bosqueschool.org_7sb44g06j2kcah9g51gmbk6h8o@group.calendar.google.com',
  'ms-boys-basketball' : 'bosqueschool.org_areprtapq8d6ijo57nao7drk38@group.calendar.google.com',
  'ms-girls-soccer' : 'bosqueschool.org_dadgjj7sn6h95748vc7j1h98k0@group.calendar.google.com',
  'ms-boys-soccer' : 'bosqueschool.org_pd9o60bcp8nbe905fip6k0t95k@group.calendar.google.com',
  'ms-cross-country' : 'bosqueschool.org_76r2rj3cmiv38rfmebnofi36rg@group.calendar.google.com',
  'ms-tennis' : 'bosqueschool.org_uq00q1kven6gvlkslpajvvijog@group.calendar.google.com',
  'ms-track' : 'bosqueschool.org_dviim4pro7vvi675vgok51c2t8@group.calendar.google.com',
  'ms-volleyball' : 'bosqueschool.org_4m11oit5m7avthkoupsfg5g7lc@group.calendar.google.com',
  'college-special-events' : 'bosqueschool.org_s16jjc81n2sjaadnvfg6ei66k8@group.calendar.google.com',
  'college-visits' : 'bosqueschool.org_6jgqiet9p6m3182cocac7p3v38@group.calendar.google.com',
  'admission-events' : 'bosqueschool.org_r3n867g79oclti23s9neidt2t0@group.calendar.google.com',
  'performing-arts' : 'bosqueschool.org_u4u5a97fb4o6qtg00jm346usoc@group.calendar.google.com',
  'summer-programs' : 'bosqueschool.org_tq19oilr6d5dmbjn261uconv1o@group.calendar.google.com',
  'bpa' : 'bosqueschool.org_101b008f4p7s333ld4ell6vpf0@group.calendar.google.com'
}

window.showCalendar = (id) ->
  $("iframe").attr("src", "https://www.google.com/calendar/embed?mode=AGENDA&src=" + id + "&ctz=America/Denver")
  $.each calendars, (key, value) ->
    if id == value
      console.log "#" + key
      top.location.hash = "#" + key



$(document).ready () ->
  hash = top.location.href.substr(top.location.href.indexOf('#')+1).toLowerCase()
  console.log(hash)
  if(calendars[hash]?)
    window.showCalendar(calendars[hash])

hideAll = () ->
  $("#Bosque").hide()
  $("#USAthletics").hide()
  $("#MSAthletics").hide()
  $("#College").hide()

$("#root").change () ->
  func = switch $("#root").val()
    when "Bosque School" then () ->
      console.log("bosque")
      hideAll()
      $("#Bosque").show()
      $('iframe').attr('src', 'https://www.google.com/calendar/embed?title=All%20Calendars&showTz=0&mode=AGENDA&height=600&wkst=1&bgcolor=%23FFFFFF&src=bosqueschool.org_hvg4ot93r37bmfhfc8icjflbj8%40group.calendar.google.com&color=%235F6B02&src=bosqueschool.org_r3n867g79oclti23s9neidt2t0%40group.calendar.google.com&color=%23AB8B00&src=bosqueschool.org_3hme67a2fiq3kehqlpj40r0g7s%40group.calendar.google.com&color=%2323164E&src=bosqueschool.org_101b008f4p7s333ld4ell6vpf0%40group.calendar.google.com&color=%23875509&src=bosqueschool.org_s16jjc81n2sjaadnvfg6ei66k8%40group.calendar.google.com&color=%23333333&src=bosqueschool.org_6jgqiet9p6m3182cocac7p3v38%40group.calendar.google.com&color=%23853104&src=bosqueschool.org_a7aqnk9em72i33o0fko7dhu1ho%40group.calendar.google.com&color=%23333333&src=bosqueschool.org_76to4kr5lb2j1an0a47idm156k%40group.calendar.google.com&color=%238C500B&src=bosqueschool.org_p9nalksq6so969kj2ltcjftmo4%40group.calendar.google.com&color=%232F6309&src=bosqueschool.org_ln1bl1ooj2e2o1kr6grhk7jrfs%40group.calendar.google.com&color=%232952A3&src=bosqueschool.org_8mei6ertr11i0cjv8f15k23jsg%40group.calendar.google.com&color=%23AB8B00&src=bosqueschool.org_areprtapq8d6ijo57nao7drk38%40group.calendar.google.com&color=%238D6F47&src=bosqueschool.org_pd9o60bcp8nbe905fip6k0t95k%40group.calendar.google.com&color=%23B1365F&src=bosqueschool.org_76r2rj3cmiv38rfmebnofi36rg%40group.calendar.google.com&color=%238C500B&src=bosqueschool.org_7sb44g06j2kcah9g51gmbk6h8o%40group.calendar.google.com&color=%23125A12&src=bosqueschool.org_dadgjj7sn6h95748vc7j1h98k0%40group.calendar.google.com&color=%23853104&src=bosqueschool.org_uq00q1kven6gvlkslpajvvijog%40group.calendar.google.com&color=%238D6F47&src=bosqueschool.org_dviim4pro7vvi675vgok51c2t8%40group.calendar.google.com&color=%2329527A&src=bosqueschool.org_4m11oit5m7avthkoupsfg5g7lc%40group.calendar.google.com&color=%23711616&src=bosqueschool.org_u4u5a97fb4o6qtg00jm346usoc%40group.calendar.google.com&color=%23182C57&src=bosqueschool.org_6a03jg89qcheos0st276c32kec%40group.calendar.google.com&color=%2328754E&src=bosqueschool.org_jvcae42sckldksbt2q2qnkrff4%40group.calendar.google.com&color=%236B3304&src=bosqueschool.org_tq19oilr6d5dmbjn261uconv1o%40group.calendar.google.com&color=%23865A5A&src=bosqueschool.org_ihpomq8egbvmfsf1ke1r607cqk%40group.calendar.google.com&color=%23333333&src=bosqueschool.org_4oicvpaalnm8238cc7c1iqvhco%40group.calendar.google.com&color=%23865A5A&src=bosqueschool.org_1dqfafsbr5je2iasbq8is5s2b0%40group.calendar.google.com&color=%23B1365F&src=bosqueschool.org_gcoo8g9euacnrc3brfmod36l98%40group.calendar.google.com&color=%238D6F47&src=bosqueschool.org_m3q3nto7qtt7n37sunnjsgaoe4%40group.calendar.google.com&color=%238C500B&src=bosqueschool.org_rt1vcc7pfgktguhnt2n6honmm8%40group.calendar.google.com&color=%235229A3&src=bosqueschool.org_t2nh5qnongbvdn5p6gvcp0nsdg%40group.calendar.google.com&color=%231B887A&src=bosqueschool.org_gj9reb6e8gauubvjq3ilmcvtdc%40group.calendar.google.com&color=%2342104A&src=bosqueschool.org_lng8hpv4ohko7eh3iichmnp5cg%40group.calendar.google.com&color=%23853104&src=bosqueschool.org_vm67grg4fq7fqapgi1pve5gprk%40group.calendar.google.com&color=%23711616&src=bosqueschool.org_saabcnnpfgq202p0vqk0uo0ugk%40group.calendar.google.com&color=%236B3304&src=bosqueschool.org_9q6ccnbv3rberbsbp0gogsalic%40group.calendar.google.com&color=%23125A12&src=bosqueschool.org_gn2dllui9rp9ut40q16sdpv89s%40group.calendar.google.com&color=%23B1365F&src=bosqueschool.org_hcbpou8h8s4j48jp1qr29u14to%40group.calendar.google.com&color=%23333333&src=bosqueschool.org_95cfs8tkgbfhjbp1a8vdj1t6f4%40group.calendar.google.com&color=%23865A5A&ctz=America%2FDenver');
      top.location.hash = '';
    when "Upper School Athletics" then () ->
      hideAll()
      $("#USAthletics").show()
    when "Middle School Athletics" then () ->
      hideAll()
      $("#MSAthletics").show()
    when "College Counseling" then () ->
      hideAll()
      $("#College").show()
    when "Admission Events" then () ->
      hideAll()
      window.showCalendar('bosqueschool.org_r3n867g79oclti23s9neidt2t0@group.calendar.google.com')
    when "Performing Arts" then () ->
      hideAll()
      window.showCalendar('bosqueschool.org_u4u5a97fb4o6qtg00jm346usoc@group.calendar.google.com')
    when "Summer Programs" then () ->
      hideAll()
      window.showCalendar('bosqueschool.org_tq19oilr6d5dmbjn261uconv1o@group.calendar.google.com')
    when "BPA" then() ->
      hideAll()
      window.showCalendar('bosqueschool.org_101b008f4p7s333ld4ell6vpf0@group.calendar.google.com')
  func()

  $("#Bosque").change () ->
    func = switch $("#Bosque").val()
      when "Major Dates" then () ->
        window.showCalendar('bosqueschool.org_76to4kr5lb2j1an0a47idm156k@group.calendar.google.com')
      when "10-Day Rotation" then () ->
        window.showCalendar('bosqueschool.org_hvg4ot93r37bmfhfc8icjflbj8@group.calendar.google.com')
      when "Lunch" then () ->
        window.showCalendar('bosqueschool.org_3hme67a2fiq3kehqlpj40r0g7s@group.calendar.google.com')
      when "School Closures" then () ->
        window.showCalendar('bosqueschool.org_6a03jg89qcheos0st276c32kec@group.calendar.google.com')
      when "Special Events" then () ->
        window.showCalendar('bosqueschool.org_jvcae42sckldksbt2q2qnkrff4@group.calendar.google.com')
      when "Intercultural Exchange" then () ->
        window.showCalendar('bosqueschool.org_a7aqnk9em72i33o0fko7dhu1ho@group.calendar.google.com')
      when "Upper School" then () ->
        window.showCalendar('bosqueschool.org_ihpomq8egbvmfsf1ke1r607cqk@group.calendar.google.com')
      when "Middle School" then () ->
        window.showCalendar('bosqueschool.org_p9nalksq6so969kj2ltcjftmo4@group.calendar.google.com')
      when "Middle School Field Trips" then () ->
        window.showCalendar('bosqueschool.org_ln1bl1ooj2e2o1kr6grhk7jrfs@group.calendar.google.com')
    func()

$("#USAthletics").change () ->
  func = switch $("#USAthletics").val()
    when "Boys Tennis" then () ->
      window.showCalendar('bosqueschool.org_rt1vcc7pfgktguhnt2n6honmm8@group.calendar.google.com')
    when "Girls Tennis" then () ->
      window.showCalendar('bosqueschool.org_saabcnnpfgq202p0vqk0uo0ugk@group.calendar.google.com')
    when "Boys Basketball" then () ->
      window.showCalendar('bosqueschool.org_1dqfafsbr5je2iasbq8is5s2b0@group.calendar.google.com')
    when "Girls Basketball" then () ->
      window.showCalendar('bosqueschool.org_gj9reb6e8gauubvjq3ilmcvtdc@group.calendar.google.com')
    when "Girls Lacrosse" then () ->
      window.showCalendar('bosqueschool.org_lng8hpv4ohko7eh3iichmnp5cg@group.calendar.google.com')
    when "Boys Lacrosse" then () ->
      window.showCalendar('bosqueschool.org_gcoo8g9euacnrc3brfmod36l98@group.calendar.google.com')
    when "Girls Soccer" then () ->
      window.showCalendar('bosqueschool.org_vm67grg4fq7fqapgi1pve5gprk@group.calendar.google.com')
    when "Boys Soccer" then () ->
      window.showCalendar('bosqueschool.org_m3q3nto7qtt7n37sunnjsgaoe4@group.calendar.google.com')
    when "Golf" then () ->
      window.showCalendar('bosqueschool.org_9q6ccnbv3rberbsbp0gogsalic@group.calendar.google.com')
    when "Swimming" then () ->
      window.showCalendar('bosqueschool.org_gn2dllui9rp9ut40q16sdpv89s@group.calendar.google.com')
    when "Track" then () ->
      window.showCalendar('bosqueschool.org_hcbpou8h8s4j48jp1qr29u14to@group.calendar.google.com')
    when "Cross Country" then () ->
      window.showCalendar('bosqueschool.org_t2nh5qnongbvdn5p6gvcp0nsdg@group.calendar.google.com')
    when "Volleyball" then () ->
      window.showCalendar('bosqueschool.org_95cfs8tkgbfhjbp1a8vdj1t6f4@group.calendar.google.com')
  func()

$("#MSAthletics").change () ->
  func = switch $("#MSAthletics").val()
    when "Girls Basketball" then () ->
      window.showCalendar('bosqueschool.org_7sb44g06j2kcah9g51gmbk6h8o@group.calendar.google.com')
    when "Boys Basketball" then () ->
      window.showCalendar('bosqueschool.org_areprtapq8d6ijo57nao7drk38@group.calendar.google.com')
    when "Girls Soccer" then () ->
      window.showCalendar('bosqueschool.org_dadgjj7sn6h95748vc7j1h98k0@group.calendar.google.com')
    when "Boys Soccer" then () ->
      window.showCalendar('bosqueschool.org_pd9o60bcp8nbe905fip6k0t95k@group.calendar.google.com')
    when "Cross Country" then () ->
      window.showCalendar('bosqueschool.org_76r2rj3cmiv38rfmebnofi36rg@group.calendar.google.com')
    when "Tennis" then () ->
      window.showCalendar('bosqueschool.org_uq00q1kven6gvlkslpajvvijog@group.calendar.google.com')
    when "Track" then () ->
      window.showCalendar('bosqueschool.org_dviim4pro7vvi675vgok51c2t8@group.calendar.google.com')
    when "Volleyball" then () ->
      window.showCalendar('bosqueschool.org_4m11oit5m7avthkoupsfg5g7lc@group.calendar.google.com')
  func()

$("#College").change () ->
  func = switch $("#College").val()
    when "Special Events" then () ->
      showCalendar('bosqueschool.org_s16jjc81n2sjaadnvfg6ei66k8@group.calendar.google.com')
    when "College Visits" then () ->
      showCalendar('bosqueschool.org_6jgqiet9p6m3182cocac7p3v38@group.calendar.google.com')
  func()
