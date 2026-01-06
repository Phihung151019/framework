.class public Landroid/nfc/RoutingTableProtocolEntry;
.super Landroid/nfc/NfcRoutingTableEntry;
.source "RoutingTableProtocolEntry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/RoutingTableProtocolEntry$ProtocolValue;
    }
.end annotation


# static fields
.field public static final whitelist PROTOCOL_ISO_DEP:I = 0x4

.field public static final whitelist PROTOCOL_NDEF:I = 0x7

.field public static final whitelist PROTOCOL_NFC_DEP:I = 0x5

.field public static final whitelist PROTOCOL_T1T:I = 0x1

.field public static final whitelist PROTOCOL_T2T:I = 0x2

.field public static final whitelist PROTOCOL_T3T:I = 0x3

.field public static final whitelist PROTOCOL_T5T:I = 0x6

.field public static final whitelist PROTOCOL_UNDETERMINED:I = 0x0

.field public static final whitelist PROTOCOL_UNSUPPORTED:I = -0x1


# instance fields
.field private final blacklist mValue:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .locals 1
    .param p1, "nfceeId"    # I
    .param p2, "value"    # I
    .param p3, "routeType"    # I
    .param p4, "powerState"    # I

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/nfc/NfcRoutingTableEntry;-><init>(IIII)V

    .line 103
    iput p2, p0, Landroid/nfc/RoutingTableProtocolEntry;->mValue:I

    .line 104
    return-void
.end method

.method public static blacklist protocolStringToInt(Ljava/lang/String;)I
    .locals 10
    .param p0, "protocolString"    # Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "PROTOCOL_ISO_DEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v0, "PROTOCOL_NFC_DEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v0, "PROTOCOL_UNDETERMINED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "PROTOCOL_NDEF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "PROTOCOL_T5T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string v0, "PROTOCOL_T3T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_6
    const-string v0, "PROTOCOL_T2T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_7
    const-string v0, "PROTOCOL_T1T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    move v0, v9

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 128
    move v1, v9

    goto :goto_2

    .line 127
    :pswitch_0
    goto :goto_2

    .line 126
    :pswitch_1
    move v1, v2

    goto :goto_2

    .line 125
    :pswitch_2
    move v1, v3

    goto :goto_2

    .line 124
    :pswitch_3
    move v1, v4

    goto :goto_2

    .line 123
    :pswitch_4
    move v1, v5

    goto :goto_2

    .line 122
    :pswitch_5
    move v1, v6

    goto :goto_2

    .line 121
    :pswitch_6
    move v1, v7

    goto :goto_2

    .line 120
    :pswitch_7
    move v1, v8

    .line 119
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x6c341c90 -> :sswitch_7
        -0x6c341c71 -> :sswitch_6
        -0x6c341c52 -> :sswitch_5
        -0x6c341c14 -> :sswitch_4
        -0x1a51e9e2 -> :sswitch_3
        -0x48c3ef -> :sswitch_2
        0x20f9b494 -> :sswitch_1
        0x2f52a66e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist getProtocol()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/nfc/RoutingTableProtocolEntry;->mValue:I

    return v0
.end method
