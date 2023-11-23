%dw 2.0
output application/json
---
if(payload.successful default false)
{
    "status": payload.successful,
    "id": payload.items.id[0],
    "message": "Account created successfully"
} else
{     
    "status": payload.successful,
    "id": payload.items.id[0],
    "message": payload.items.statusCode[0]
}