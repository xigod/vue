<form class="form-horizontal" id="timeSet">
  <h2 class="legend">Date & Time</h2>
  <fieldset>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="sysTimeZone">Time Zone</label>
      <div class="col-sm-7 col-md-6">
        <select id="sysTimeZone" name="sysTimeZone" class="form-control" >
          <option value="0">(GMT-12:00)West of International Date Line</option>
          <option value="1">(GMT-11:00)Midway Island, Samoa</option>
          <option value="2">(GMT-10:00)Hawaii, Honolulu</option>
          <option value="3">(GMT-09:00)Alaska</option>
          <option value="4">(GMT-08:00)Pacific Time</option>
          <option value="5">(GMT-07:00)Mountain Time</option>
          <option value="6">(GMT-07:00)Chihuahua, La Paz, Mazatlan</option>
          <option value="7">(GMT-07:00)Arizona</option>
          <option value="8">(GMT-06:00)Central Time</option>
          <option value="9">(GMT-06:00)Guadalajara, Mexico City, Monterrey</option>
          <option value="10">(GMT-05:00)Eastern Time</option>
          <option value="11">(GMT-05:00)Indiana</option>
          <option value="12">(GMT-05:00)Bogota, Lima, Quito</option>
          <option value="13">(GMT-04:30)Caracas, La Paz</option>
          <option value="14">(GMT-04:00)Atlantic Time</option>
          <option value="15">(GMT-04:00)Manaus</option>
          <option value="16">(GMT-03:30)Newfoundland and Labrador</option>
          <option value="17">(GMT-03:00)Brasilia Asia</option>
          <option value="18">(GMT-03:00)Greenland</option>
          <option value="19">(GMT-03:00)Buenos Aires, Georgetown</option>
          <option value="20">(GMT-02:00)Atlantic</option>
          <option value="21">(GMT-01:00)Azores</option>
          <option value="22">(GMT-01:00)Cape Verde Islands</option>
          <option value="23">(GMT)Greenwich Mean Time</option>
          <option value="24">(GMT)Casablanca , Monrovia</option>
          <option value="25">(GMT+01:00)Belgrade, Bratislava, Budapest, Ljubljana, Prague</option>
          <option value="26">(GMT+01:00)Sarajevo, Skopje, Warsaw, Zagreb</option>
          <option value="27">(GMT+01:00)Brussels, Copenhagen, Madrid, Paris</option>
          <option value="28">(GMT+01:00)West Africa</option>
          <option value="29">(GMT+01:00)Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna</option>
          <option value="30">(GMT+02:00)Athens, Bucharest, Istanbul</option>
          <option value="31">(GMT+02:00)Minsk</option>
          <option value="32">(GMT+02:00)Cairo</option>
          <option value="33">(GMT+02:00)Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius</option>
          <option value="34">(GMT+02:00)Jerusalem</option>
          <option value="35">(GMT+02:00)Windhoek</option>
          <option value="36">(GMT+02:00)Harare, Pretoria</option>
          <option value="37">(GMT+03:00)Moscow, St. Petersburg, Volgograd</option>
          <option value="38">(GMT+03:00)Kuwait, Riyadh</option>
          <option value="39">(GMT+03:00)Baghdad</option>
          <option value="40">(GMT+03:00)Nairobi</option>
          <option value="41">(GMT+03:30)Tehran</option>
          <option value="42">(GMT+04:00)Abu Dhabi, Muscat</option>
          <option value="43">(GMT+04:00)Baku</option>
          <option value="44">(GMT+04:00)Yerevan</option>
          <option value="45">(GMT+04:00)Tbilisi</option>
          <option value="46">(GMT+04:30)Kabul</option>
          <option value="47">(GMT+05:00)Islamabad, Karachi, Tashkent</option>
          <option value="48">(GMT+05:00)Yekaterinburg</option>
          <option value="49">(GMT+05:30)Chennai, Kolkata, Mumbai, New Delhi</option>
          <option value="50">(GMT+05:45)Kathmandu</option>
          <option value="51">(GMT+06:00)Astana, Dhaka</option>
          <option value="52">(GMT+06:00)Almaty, Novosibirsk</option>
          <option value="53">(GMT+06:00)Colombo</option>
          <option value="54">(GMT+06:30)Yangon</option>
          <option value="55">(GMT+07:00)Krasnoyarsk</option>
          <option value="56">(GMT+07:00)Bangkok, Hanoi, Jakarta</option>
          <option value="57">(GMT+08:00)Beijing, Chongqing, Hong Kong, Urumqi</option>
          <option value="58">(GMT+08:00)Irkutsk grams, Ulaanbaatar</option>
          <option value="59">(GMT+08:00)Kuala Lumpur, Singapore</option>
          <option value="60">(GMT+08:00)Perth</option>
          <option value="61">(GMT+09:00)Yakutsk</option>
          <option value="62">(GMT+09:00)Osaka, Sapporo, Tokyo</option>
          <option value="63">(GMT+09:00)Seoul</option>
          <option value="64">(GMT+09:30)Darwin</option>
          <option value="65">(GMT+09:30)Adelaide</option>
          <option value="66">(GMT+10:00)Brisbane</option>
          <option value="67">(GMT+10:00)Canberra, Melbourne Sydney</option>
          <option value="68">(GMT+10:00)Guam, Port Moresby</option>
          <option value="69">(GMT+10:00)Vladivostok</option>
          <option value="70">(GMT+10:00)Hobart</option>
          <option value="71">(GMT+11:00)Magadan, Solomon Islands, New Caledonia and more</option>
          <option value="72">(GMT+12:00)Fiji Islands, Kamchatka Peninsula, the Marshall Islands</option>
          <option value="73">(GMT+12:00)Auckland , Wellington</option>
          <option value="74">(GMT+13:00)Nuku'alofa</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="sysTimecurrentTime">Current Time</label>
      <div class="col-sm-4 col-md-3">
        <p id="sysTimecurrentTime" class="form-control-static">2015-3-9  19:43:25</p>
      </div>
      <div class="col-sm-4 col-md-5 help-block" id="internetTips">The current date and time have been synchronized with those of the internet.</div>
    </div>
  </fieldset>
</form>
<!--End Date & Time-->