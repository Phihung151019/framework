.class public Landroid/nfc/RoutingTableAidEntry;
.super Landroid/nfc/NfcRoutingTableEntry;
.source "RoutingTableAidEntry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;II)V
    .locals 1
    .param p1, "nfceeId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "routeType"    # I
    .param p4, "powerState"    # I

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/nfc/NfcRoutingTableEntry;-><init>(IIII)V

    .line 36
    iput-object p2, p0, Landroid/nfc/RoutingTableAidEntry;->mValue:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist getAid()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/nfc/RoutingTableAidEntry;->mValue:Ljava/lang/String;

    return-object v0
.end method
