.class Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->registerNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6118
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 6122
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmNetId(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6123
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internet onAvailable for swisscom : NetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mlog(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    .line 6124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.data_available_for_phone_number"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6125
    const-string v1, "com.sec.android.app.RilPhoneNumberService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6126
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6128
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fputmNetId(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .locals 2

    .line 6132
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmNetId(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)I

    move-result v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 6133
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLost for reset : mNetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmNetId(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mlog(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    .line 6134
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fputmNetId(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    :cond_0
    return-void
.end method
