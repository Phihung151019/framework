.class Lcom/android/internal/telephony/satellite/SatelliteController$2;
.super Landroid/content/BroadcastReceiver;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 762
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 766
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object p1

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/satellite/SatelliteController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fputmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getConfigSatelliteGatewayServicePackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fputmSatelliteGatewayServicePackageName(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " DefaultSmsPackageName:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 783
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object p2

    .line 784
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 786
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default SMS package changed : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 789
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmSatelliteGatewayServicePackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmDefaultSmsPackageName(Lcom/android/internal/telephony/satellite/SatelliteController;)Ljava/lang/String;

    move-result-object p2

    .line 790
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 792
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string p1, "Neither SMS or SatelliteGateway package"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogv(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void

    .line 796
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$fgetmSubscriptionManagerService(Lcom/android/internal/telephony/satellite/SatelliteController;)Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 798
    array-length p2, p1

    :goto_1
    if-ge v2, p2, :cond_3

    aget v0, p1, v2

    .line 800
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$misActiveSubId(Lcom/android/internal/telephony/satellite/SatelliteController;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPackageStateChangedReceiver: activeSubId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->handleCarrierRoamingNtnAvailableServicesChanged(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 808
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string p1, "mPackageStateChangedReceiver: activeSubIds is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void
.end method
