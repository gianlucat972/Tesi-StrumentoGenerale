<html><head><title x857695539943-x-test-tpl-1> FreeMarker Spring MVC Hello World</title>

<style>
body, input {
	font-family: Calibri, Arial;
	margin: 0px;
	padding: 0px;
}
#header h2 {
	color: white;
	background-color: #3275A8;
	height: 50px;
	padding: 5px 0 0 5px;
	font-size: 20px;
}

.datatable {margin-bottom:5px;border:1px solid #eee;border-collapse:collapse;width:400px;max-width:100%;font-family:Calibri}
.datatable th {padding:3px;border:1px solid #888;height:30px;background-color:#B2D487;text-align:center;vertical-align:middle;color:#444444}
.datatable tr {border:1px solid #888}
.datatable tr.odd {background-color:#eee}
.datatable td {padding:2px;border:1px solid #888}
#content { padding 5px; margin: 5px; text-align: center}
fieldset { width: 300px; padding: 5px; margin-bottom: 0px; }
legend { font-weight: bold; }
</style>

<body>
<div id="header" x857695539943-x-test-tpl-1>
<H2 x857695539943-x-test-hook-2>
	FreeMarker Spring MVC Hello World
</H2>
</div>

<div id="content" x857695539943-x-test-tpl-3>

  <fieldset x857695539943-x-test-hook-4>
  	<legend x857695539943-x-test-hook-5>Add Car</legend>
  <form name="car" action="add" method="post" x857695539943-x-test-hook-6>
  	Make : <input type="text" name="make" x857695539943-x-test-hook-7 />	<br x857695539943-x-test-hook-8/>
  	Model: <input type="text" name="model" x857695539943-x-test-hook-9 />	<br x857695539943-x-test-hook-10/>
  	<input type="submit" value="   Save   " x857695539943-x-test-hook-11 />
  </form>
  </fieldset>

  <br x857695539943-x-test-hook-12/>
  <table class="datatable" x857695539943-x-test-hook-13>
  	<tr x857695539943-x-test-hook-14>
  		<th x857695539943-x-test-hook-15>Make</th>  <th x857695539943-x-test-hook-16>Model</th>
  	</tr>
    <#list model["carList"] as car>
	  	<tr x857695539943-x-test-hook-17>
	  		<td x857695539943-x-test-hook-18>${car.make}</td> <td x857695539943-x-test-hook-19>${car.model}</td>
	  	</tr>
    </#list>
  </table>

  <div class="form-group" x857695539943-x-test-hook-20>
    <ul class="nav nav-tabs" x857695539943-x-test-hook-21>
        <li class="${((model.route!'')  == '')?then('active','') }" x857695539943-x-test-hook-22><a href="index" x857695539943-x-test-hook-23>Home</a></li>
        <li x857695539943-x-test-hook-24><a href="" x857695539943-x-test-hook-25>Users</a></li>
        <li class="${((model.route!'')  == 'tasks')?then('active','') }" x857695539943-x-test-hook-26><a href="tasks" x857695539943-x-test-hook-27>Tasks</a></li>
    </ul>

</div>
</div>
</body>
</html>
