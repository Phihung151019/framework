.class public abstract Landroid/nfc/NfcRoutingTableEntry;
.super Ljava/lang/Object;
.source "NfcRoutingTableEntry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcRoutingTableEntry$RoutingTableType;
    }
.end annotation


# static fields
.field public static final whitelist TYPE_AID:I = 0x0

.field public static final whitelist TYPE_PROTOCOL:I = 0x1

.field public static final whitelist TYPE_SYSTEM_CODE:I = 0x3

.field public static final whitelist TYPE_TECHNOLOGY:I = 0x2


# instance fields
.field private final blacklist mNfceeId:I

.field private final blacklist mPowerState:I

.field private final blacklist mRouteType:I

.field private final blacklist mType:I


# direct methods
.method protected constructor blacklist <init>(IIII)V
    .locals 0
    .param p1, "nfceeId"    # I
    .param p2, "type"    # I
    .param p3, "routeType"    # I
    .param p4, "powerState"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroid/nfc/NfcRoutingTableEntry;->mNfceeId:I

    .line 76
    iput p2, p0, Landroid/nfc/NfcRoutingTableEntry;->mType:I

    .line 77
    iput p3, p0, Landroid/nfc/NfcRoutingTableEntry;->mRouteType:I

    .line 78
    iput p4, p0, Landroid/nfc/NfcRoutingTableEntry;->mPowerState:I

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist getNfceeId()I
    .locals 1

    .line 86
    iget v0, p0, Landroid/nfc/NfcRoutingTableEntry;->mNfceeId:I

    return v0
.end method

.method public blacklist getPowerState()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/nfc/NfcRoutingTableEntry;->mPowerState:I

    return v0
.end method

.method public whitelist getRouteType()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/nfc/NfcRoutingTableEntry;->mRouteType:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 95
    iget v0, p0, Landroid/nfc/NfcRoutingTableEntry;->mType:I

    return v0
.end method
