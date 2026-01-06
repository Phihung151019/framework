.class public Landroid/nfc/RoutingTableTechnologyEntry;
.super Landroid/nfc/NfcRoutingTableEntry;
.source "RoutingTableTechnologyEntry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/RoutingTableTechnologyEntry$TechnologyValue;
    }
.end annotation


# static fields
.field public static final whitelist TECHNOLOGY_A:I = 0x0

.field public static final whitelist TECHNOLOGY_B:I = 0x1

.field public static final whitelist TECHNOLOGY_F:I = 0x2

.field public static final whitelist TECHNOLOGY_UNSUPPORTED:I = -0x1

.field public static final whitelist TECHNOLOGY_V:I = 0x3


# instance fields
.field private final blacklist mValue:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .locals 1
    .param p1, "nfceeId"    # I
    .param p2, "value"    # I
    .param p3, "routeType"    # I
    .param p4, "powerState"    # I

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/nfc/NfcRoutingTableEntry;-><init>(IIII)V

    .line 84
    iput p2, p0, Landroid/nfc/RoutingTableTechnologyEntry;->mValue:I

    .line 85
    return-void
.end method

.method public static blacklist techStringToInt(Ljava/lang/String;)I
    .locals 6
    .param p0, "tech"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "TECHNOLOGY_V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "TECHNOLOGY_F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "TECHNOLOGY_B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "TECHNOLOGY_A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 105
    move v1, v5

    goto :goto_2

    .line 104
    :pswitch_0
    goto :goto_2

    .line 103
    :pswitch_1
    move v1, v2

    goto :goto_2

    .line 102
    :pswitch_2
    move v1, v3

    goto :goto_2

    .line 101
    :pswitch_3
    move v1, v4

    .line 100
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x35c69632 -> :sswitch_3
        -0x35c69631 -> :sswitch_2
        -0x35c6962d -> :sswitch_1
        -0x35c6961d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist getTechnology()I
    .locals 1

    .line 94
    iget v0, p0, Landroid/nfc/RoutingTableTechnologyEntry;->mValue:I

    return v0
.end method
