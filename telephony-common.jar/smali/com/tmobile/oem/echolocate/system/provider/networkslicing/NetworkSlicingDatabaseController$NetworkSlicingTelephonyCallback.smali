.class public Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSlicingTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "NetworkSlicingDatabaseController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSlicingTelephonyCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 428
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 432
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$smisTMONetworkCode()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 434
    const-string p0, "-1"

    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsBandNumber(Ljava/lang/String;)V

    .line 437
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p0

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    .line 438
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 440
    :goto_0
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 445
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 446
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result p1

    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {p0}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsBandNumber(Ljava/lang/String;)V

    return-void

    .line 449
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    .line 450
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {p0}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsBandNumber(Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
