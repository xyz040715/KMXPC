({
	getContactsAction: function(cmp, event, helper) {
        var action = cmp.get("c.getContacts");
        action.setCallback(this, function(data) {
        				cmp.set("v.contacts", data.getReturnValue());
        }
                          );
        $A.enqueueAction(action);

        //initialize state
            action = cmp.get("c.getStates");
            action.setCallback(this, function(data) {
                            cmp.set("v.state", data.getReturnValue());
            }
                              );
            $A.enqueueAction(action);
    },
    
    
    //testing the change state
	changeState: function(cmp, event, helper) {
        var state = cmp.get("v.state") + "_1";
    	cmp.set("v.state", state);
        
        var action = cmp.get("c.changeStates");
        action.setParams({ newState : state });
        action.setCallback(this, function(response) {
            var res = response.getState();
            if (res == "SUCCESS") {
                //alert("session setting success");
            }
            else {
//                alert("session setting failed");
            }
        }
                           );
        $A.enqueueAction(action);  
	},
    scrollup: function(cmp, event, helper) {
//		   window.scrollTo(0,0);
        alert("scroll up me1 ");
		var wrapperDiv = document.getElementById("wrapper");
        warpperDiv.scrollTop=0;	
		alert("scroll to");
        warpperDiv.className="wrapper";	

        $('body').scrollTo(0,0);
//        var wrapper = cmp.find("changeCacheSessionAttr");
//        alert("scroll up me2: " + wrapper);
        
	//	    applyCSS: function(cmp, event) {
       // var cmpTarget = cmp.find('wrapper');
        //$A.util.addClass(cmpTarget, 'wrapper');
    //},
	}
})