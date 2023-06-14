<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<div class="container" style="background-color: white">
    <h1 class="mx-auto" style="width: 300px;">Its pizza time!</h1>


    <form action="/pizza-order" method="POST">
        <%--Select Crust--%>
        <h2>Select your crust!</h2>
        <div class="form-check">
            <input value="thin" class="form-check-input" type="radio" name="crust" id="crust1">
            <label class="form-check-label" for="crust1">
                Thin
            </label>
        </div>
        <div class="form-check">
            <input value="deep dish" class="form-check-input" type="radio" name="crust" id="crust2" checked>
            <label class="form-check-label" for="crust2">
                Deep Dish
            </label>
        </div>
        <%--Select Sauce--%>
        <h2>Select your sauce!</h2>

        <div class="form-check">
            <input value="traditional" class="form-check-input" type="radio" name="sauce" id="sauce1">
            <label class="form-check-label" for="sauce1">
                Traditional
            </label>
        </div>
        <div class="form-check">
            <input value="pesto" class="form-check-input" type="radio" name="sauce" id="sauce2" checked>
            <label class="form-check-label" for="sauce2">
                Pesto
            </label>
        </div>
        <div class="form-check">
            <input value="alfredo" class="form-check-input" type="radio" name="sauce" id="sauce3" checked>
            <label class="form-check-label" for="sauce3">
                Alfredo
            </label>
        </div>
        <%--Select Size(using select inputs)--%>
        <h2>Select your size!</h2>
        <select class="form-select" aria-label="Default select example" name="size">
            <option selected value="small">Small 8"</option>
            <option value="medium">Medium 12"</option>
            <option value="large">Large 14"</option>
            <option value="x-large">X-Large 18"</option>
        </select>
        <%--Select toppings(using checkboxes)--%>
        <div class="form-check">
            <input name="toppings" class="form-check-input" type="checkbox" value="pepperoni" id="topping1">
            <label class="form-check-label" for="topping1">
                Pepperoni
            </label>
        </div>
        <div class="form-check">
            <input name="toppings" class="form-check-input" type="checkbox" value="mushroom" id="topping2">
            <label class="form-check-label" for="topping2">
                Mushroom
            </label>
        </div>
        <%--Select address(using text input)--%>
        <h2>Enter your address!</h2>
        <div class="input-group">
            <span class="input-group-text">Address</span>
            <textarea name="address" class="form-control" aria-label="address"></textarea>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>

