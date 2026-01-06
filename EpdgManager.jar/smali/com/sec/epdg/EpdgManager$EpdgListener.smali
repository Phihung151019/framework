.class public abstract Lcom/sec/epdg/EpdgManager$EpdgListener;
.super Lcom/sec/epdg/IEpdgHandoverListener$Stub;
.source "EpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EpdgListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 168
    return-void
.end method

.method public onEpdgDeregister(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 177
    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 192
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 171
    return-void
.end method

.method public onEpdgIpSecConnectionResultDelay(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 195
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 180
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 183
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 174
    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 189
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 186
    return-void
.end method
