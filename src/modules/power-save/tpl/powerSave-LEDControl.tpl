<section>
<form class="form-horizontal">
<h2 class="legend">LED Control</h2>
  <fieldset>
    <div class="form-group">
      <label class="col-sm-4 col-md-3 control-label" for="LEDEnable">LED Control</label>
	    <div class="col-sm-8">
	      	<label for = "LEDEnable" class="radio-inline">
		      	<input type="radio" name="LED-control" id="LEDEnable" value="0" id="alwaysOn">
		      	Always Open
	      	</label>
			<label for="LEDDisable" class="radio-inline">
		      	<input type="radio" name="LED-control" id="LEDDisable" value="1">
		      	Always Close
		    </label>
	      	<label for="LEDRegular" class="radio-inline">
		      	<input type="radio" name="LED-control" id="LEDRegular" value="2">
	    	  	Close Shedule
	    	</label>
	    </div>
	</div>
	<div class="form-group" id="open-regularly">
		<label class="col-sm-4 col-md-3 control-label">Close Time</label>
		<div class="col-sm-8 col-md-9">
			<select class="form-control input-mini" id="startTimeHour">
				<% for(var i=0;i<24;i++){ %>
					<% if(i<10) {%>
						<option value="<%='0'+i%>"><%="0"+i%></option>
					<%}else{%>
						<option value="<%=i%>"><%=i%></option>
					<%}%>
				<%}%>
			</select>
			<span class="control-label">:</span>
			<select class="form-control input-mini" id="startTimeMin">
				<% for(var i=0;i<60;i=i+5){ %>
					<% if(i<10) {%>
						<option value="<%='0'+i%>"><%="0"+i%></option>
					<%}else{%>
						<option value="<%=i%>"><%=i%></option>
					<%}%>
				<%}%>
			</select>	
			<span>~</span>
			<select class="form-control input-mini" id="endTimeHour">
				<% for(var i=0;i<24;i++){ %>
					<% if(i<10) {%>
						<option value="<%='0'+i%>"><%="0"+i%></option>
					<%}else{%>
						<option value="<%=i%>"><%=i%></option>
					<%}%>
				<%}%>
			</select>
			<span>:</span>
			<select class="form-control input-mini" id="endTimeMin">
				<% for(var i=0;i<60;i=i+5){ %>
					<% if(i<10) {%>
						<option value="<%='0'+i%>"><%="0"+i%></option>
					<%}else{%>
						<option value="<%=i%>"><%=i%></option>
					<%}%>
				<%}%>
			</select>	
		</div>
	</div>
 </fieldset>
 </form>
</section>

