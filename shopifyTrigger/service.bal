import ballerinax/trigger.shopify;

configurable shopify:ListenerConfig config = ?;

listener shopify:Listener webhookListener = new (config);

@display {
    label: "OrdersService",
    id: "OrdersService"
}
service shopify:OrdersService on webhookListener {
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

