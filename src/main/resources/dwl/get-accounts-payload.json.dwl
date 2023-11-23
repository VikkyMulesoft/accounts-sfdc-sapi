%dw 2.0
output application/json
---
payload map ((item, index) -> {
    "name": item.Name,
    "email": item.Owner.Email,
    "number": item.AccountNumber,
    "phone": item.Phone,
    "fax": item.Fax,
    "billingAddress": {
        "street": item.BillingStreet,
        "city": item.BillingCity,
        "state": item.BillingState,
        "postalCode": item.BillingPostalCode,
        "country": item.BillingCountry
    },
    "shippingAddress": {
        "street": item.ShippingStreet,
        "city": item.ShippingCity,
        "state": item.ShippingState,
        "postalCode": item.ShippingPostalCode,
        "country": item.ShippingCountry
    }
})