.class Lcom/android/internal/telephony/data/DataAllowPopup$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataAllowPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataAllowPopup;->getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataAllowPopup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataAllowPopup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 599
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .locals 3

    if-nez p1, :cond_0

    .line 603
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const-string p1, "DataAllowPopup, Wifi, onAvailable, network null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataAllowPopup;Ljava/lang/String;)V

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataAllowPopup;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 610
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const-string p1, "DataAllowPopup, Wifi, onAvailable, cm null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataAllowPopup;Ljava/lang/String;)V

    return-void

    .line 614
    :cond_1
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_2

    .line 616
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const-string p1, "DataAllowPopup, Wifi, onAvailable, capabilities null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataAllowPopup;Ljava/lang/String;)V

    return-void

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fputmIsWifiAvailable(Lcom/android/internal/telephony/data/DataAllowPopup;Z)V

    const/16 v0, 0x10

    .line 621
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi, onAvailable, validated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 624
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fputmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;I)V

    return-void

    .line 626
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fputmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;I)V

    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    if-nez p1, :cond_0

    .line 633
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const-string p1, "DataAllowPopup, Wifi, onCapabilitiesChanged, network null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataAllowPopup;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const-string p1, "DataAllowPopup, Wifi, onCapabilitiesChanged, nc null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataAllowPopup;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 p1, 0x10

    .line 642
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    .line 643
    const-string p2, "->"

    const/4 v0, 0x4

    if-eqz p1, :cond_4

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataAllowPopup, Wifi, onCapabilitiesChanged, validated, status: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fgetmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 646
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataAllowPopup;Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fgetmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fgetmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    .line 651
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fputmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;I)V

    return-void

    .line 655
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataAllowPopup, Wifi, onCapabilitiesChanged, invalidated, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fgetmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataAllowPopup;Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fgetmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;)I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 658
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fputmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;I)V

    .line 659
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->isSetupWizardCompleted()Z

    move-result p1

    .line 660
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wifi, onCapabilitiesChanged, invalidated, connect via data, setupWizardCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    if-nez p1, :cond_5

    .line 662
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const p1, 0x42082

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$msendMessage(Lcom/android/internal/telephony/data/DataAllowPopup;I)V

    :cond_5
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .locals 3

    if-nez p1, :cond_0

    .line 670
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const-string p1, "DataAllowPopup, Wifi, onLost, network null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataAllowPopup;Ljava/lang/String;)V

    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi, onLost, network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    .line 674
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fputmIsWifiAvailable(Lcom/android/internal/telephony/data/DataAllowPopup;Z)V

    .line 675
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup$1;->this$0:Lcom/android/internal/telephony/data/DataAllowPopup;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->-$$Nest$fputmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;I)V

    return-void
.end method
