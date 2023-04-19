import ballerina/http;
import ballerinax/trigger.shopify;

configurable shopify:ListenerConfig config = ?;

listener shopify:Listener webhookListener = new (config);

@display {
    label: "OrdersService",
    id: "OrdersService"
}
service shopify:OrdersService on webhookListener {

    @display {
        label: "BillingAPI",
        id: "BillingAPI-4a797555-30e5-4e29-9e4c-8387b1926808"
    }
    http:Client billingApiClient;

    function init() returns error? {
        self.billingApiClient = check new ("");
    }

    remote function onOrdersCreate(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersCancelled(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersFulfilled(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersPaid(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersPartiallyFulfilled(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersUpdated(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
}

