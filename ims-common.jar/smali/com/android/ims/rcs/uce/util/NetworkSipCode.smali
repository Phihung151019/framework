.class public Lcom/android/ims/rcs/uce/util/NetworkSipCode;
.super Ljava/lang/Object;
.source "NetworkSipCode.java"


# static fields
.field public static final blacklist SIP_ACCEPTED:Ljava/lang/String; = "Accepted"

.field public static final blacklist SIP_BAD_REQUEST:Ljava/lang/String; = "Bad Request"

.field public static final blacklist SIP_CODE_ACCEPTED:I = 0xca

.field public static final blacklist SIP_CODE_BAD_EVENT:I = 0x1e9

.field public static final blacklist SIP_CODE_BAD_REQUEST:I = 0x190

.field public static final blacklist SIP_CODE_BUSY:I = 0x1e6

.field public static final blacklist SIP_CODE_BUSY_EVERYWHERE:I = 0x258

.field public static final blacklist SIP_CODE_DECLINE:I = 0x25b

.field public static final blacklist SIP_CODE_DOES_NOT_EXIST_ANYWHERE:I = 0x25c

.field public static final blacklist SIP_CODE_FORBIDDEN:I = 0x193

.field public static final blacklist SIP_CODE_INTERVAL_TOO_BRIEF:I = 0x1a7

.field public static final blacklist SIP_CODE_METHOD_NOT_ALLOWED:I = 0x195

.field public static final blacklist SIP_CODE_NOT_FOUND:I = 0x194

.field public static final blacklist SIP_CODE_OK:I = 0xc8

.field public static final blacklist SIP_CODE_REQUEST_ENTITY_TOO_LARGE:I = 0x19d

.field public static final blacklist SIP_CODE_REQUEST_TIMEOUT:I = 0x198

.field public static final blacklist SIP_CODE_SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final blacklist SIP_CODE_SERVER_TIMEOUT:I = 0x1f8

.field public static final blacklist SIP_CODE_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final blacklist SIP_CODE_TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final blacklist SIP_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "Internal Server Error"

.field public static final blacklist SIP_NOT_AUTHORIZED_FOR_PRESENCE:Ljava/lang/String; = "not authorized for presence"

.field public static final blacklist SIP_NOT_REGISTERED:Ljava/lang/String; = "User not registered"

.field public static final blacklist SIP_OK:Ljava/lang/String; = "OK"

.field public static final blacklist SIP_SERVICE_UNAVAILABLE:Ljava/lang/String; = "Service Unavailable"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCapabilityErrorFromSipCode(ILjava/lang/String;I)I
    .locals 1
    .param p0, "sipCode"    # I
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "requestType"    # I

    .line 65
    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    .line 110
    const/4 v0, 0x1

    .local v0, "uceError":I
    goto :goto_0

    .line 107
    .end local v0    # "uceError":I
    :sswitch_0
    const/16 v0, 0xc

    .line 108
    .restart local v0    # "uceError":I
    goto :goto_0

    .line 102
    .end local v0    # "uceError":I
    :sswitch_1
    const/4 v0, 0x6

    .line 103
    .restart local v0    # "uceError":I
    goto :goto_0

    .line 99
    .end local v0    # "uceError":I
    :sswitch_2
    const/4 v0, 0x1

    .line 100
    .restart local v0    # "uceError":I
    goto :goto_0

    .line 95
    .end local v0    # "uceError":I
    :sswitch_3
    const/16 v0, 0x9

    .line 96
    .restart local v0    # "uceError":I
    goto :goto_0

    .line 87
    .end local v0    # "uceError":I
    :sswitch_4
    if-ne p2, v0, :cond_0

    .line 89
    const/4 v0, 0x5

    .restart local v0    # "uceError":I
    goto :goto_0

    .line 91
    .end local v0    # "uceError":I
    :cond_0
    const/4 v0, 0x7

    .line 93
    .restart local v0    # "uceError":I
    goto :goto_0

    .line 68
    .end local v0    # "uceError":I
    :sswitch_5
    if-ne p2, v0, :cond_1

    .line 70
    const/4 v0, 0x5

    .restart local v0    # "uceError":I
    goto :goto_0

    .line 73
    .end local v0    # "uceError":I
    :cond_1
    const-string v0, "User not registered"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x4

    .restart local v0    # "uceError":I
    goto :goto_0

    .line 76
    .end local v0    # "uceError":I
    :cond_2
    const-string v0, "not authorized for presence"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const/4 v0, 0x5

    .restart local v0    # "uceError":I
    goto :goto_0

    .line 82
    .end local v0    # "uceError":I
    :cond_3
    const/4 v0, 0x6

    .line 85
    .restart local v0    # "uceError":I
    nop

    .line 113
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_5
        0x194 -> :sswitch_4
        0x198 -> :sswitch_3
        0x1a7 -> :sswitch_2
        0x1e9 -> :sswitch_1
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x1f8 -> :sswitch_5
    .end sparse-switch
.end method
