function something()
	
	{
		var x = window.localStorage.getItem('aaa');

		x = x + 1;

		window.localStorage.setItem('aaa', x);

		alert (x);
    }

    function add_to_cart(id)
    {
    	var key = 'product_' + id;
    	var x =  window.localStorage.getItem(key);
    	x = x * 1 + 1;
    	window.localStorage.setItem('product_' + id, x);
    	alert('Items in your cart: ' + cart_get_number_of_items());
    }

    
    function cart_get_number_of_items()
    {
    	var cnt = 0
    	for(var i = 0; i < window.localStorage.length; i++)
    	{
    	   var key = window.localStorage.key(i);
    	   //var value = window.localStorage.getItem(key);
    	   if(key.indexOf('product_') == 0)
    	   {
    	   	cnt = cnt + value;
    	   }

    	} 
    	return cnt * 1;
    }
